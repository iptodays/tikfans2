/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-05 21:48:24
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 15:05:12
 * @FilePath: /tikfans2/lib/logic/social.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/models/platform.dart';
import 'package:tikfans2/models/user.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class SocialLogic extends IGetxController {
  final TextEditingController controller = TextEditingController();
  RxBool enable = false.obs;

  /// popover是否正在显示
  final RxBool showPopover = false.obs;

  /// 当前使用的平台
  final Rx<PlatformModel> platform =
      PlatformModel.fromJson(AppConfig.instance.box.read('current_platform'))
          .obs;

  /// 当前使用的用户
  final Rx<UserModel?> user = Rx(null);

  @override
  void onInit() {
    _updateCurrentUser();
    super.onInit();
  }

  /// 更新当前使用的用户
  void _updateCurrentUser() async {
    String key = 'user_${platform.value.platform}';
    if (AppConfig.instance.box.hasData(key)) {
      List<UserModel> list = AppConfig.instance.box
          .read(key)
          .map<UserModel>((v) => UserModel.fromJson(v))
          .toList();
      if (list.isNotEmpty) {
        UserModel model = list.singleWhere((element) => element.isActive);
        setUserModel(model);
      } else {
        await AppConfig.instance.box.remove(key);
        _updateCurrentUser();
      }
    } else {
      if (user.value != null) {
        user.trigger(null);
      }
    }
  }

  /// 设置当前使用的登录用户
  void setUserModel(UserModel model) {
    if (model.id != user.value?.id) {
      user.trigger(model);
    }
  }

  /// 用户名输入框发生变化
  void onChanged(String value) {
    if (controller.text.isNotEmpty && enable.isFalse) {
      enable.toggle();
    } else if (controller.text.isEmpty && enable.isTrue) {
      enable.toggle();
    }
  }

  /// 更新popover显示状态
  void updateShowPopover() {
    showPopover.toggle();
  }

  /// 更新默认平台
  Future<void> updatePlatform(PlatformModel model) async {
    Get.back();
    AppConfig.instance.box.write('current_platform', model.toJson());
    platform.trigger(model);
    _updateCurrentUser();
  }

  /// 获取用户信息
  Future<void> getUser() async {
    if (enable.isFalse || EasyLoading.isShow) return;
    String link = controller.text;
    String p = Get.arguments['model'].platform;
    EasyLoading.show();
    Response response = await Api().request(
      '/Platform.getUser',
      data: {
        'link': link,
        'platform': p,
      },
    );
    if (response.isOk) {
      EasyLoading.dismiss();
      response.result['platform'] = p;
      UserModel u = UserModel.fromJson(response.result);
      u.isActive = true;
      String key = 'user_$p';
      if (AppConfig.instance.box.hasData(key)) {
        // 当前平台已有用户登录
        List usersJson = AppConfig.instance.box.read(key);
        List<UserModel> list =
            usersJson.map((v) => UserModel.fromJson(v)).toList();
        for (var element in list) {
          // 取消所有已登录用户激活状态
          element.isActive = false;
        }
        // 移除数组中当前获取信息的登录用户
        list.removeWhere((element) => element.id == u.id);
        // 将当前获取信息用户插入数组
        list.add(u);
        // 写入本地缓存
        await AppConfig.instance.box.write(
          key,
          list.map((e) => e.toJson()).toList(),
        );
      } else {
        await AppConfig.instance.box.write(key, [u.toJson()]);
      }
      if (p == platform.value.platform) {
        user.trigger(u);
      }
      Get.back();
    } else {
      EasyLoading.showToast(response.message);
    }
  }

  /// 删除一个用户
  Future<void> deleteOneuser(UserModel model) async {
    String key = 'user_${model.platform}';
    List usersJson = AppConfig.instance.box.read(key);
    List<UserModel> list = usersJson.map((v) => UserModel.fromJson(v)).toList();
    list.removeWhere((element) => element.id == model.id);
    if (list.isEmpty) {
      AppConfig.instance.box.remove(key);
      if (model.platform == platform.value.platform) {
        user.trigger(null);
      }
    } else if (list.where((element) => element.isActive).isEmpty) {
      list.first.isActive = true;
      setUserModel(list.first);
    }
    if (list.isNotEmpty) {
      await AppConfig.instance.box.write(
        key,
        list.map((e) => e.toJson()).toList(),
      );
    }
  }
}
