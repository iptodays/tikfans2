/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-03 14:55:44
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-17 19:59:01
 * @FilePath: /tikfans/lib/logic/task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/pool.dart';
import 'package:tikfans2/models/user.dart';
import 'package:tikfans2/pages/task/alert/ad_task.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TaskLogic extends IGetxController {
  /// 用户
  final SocialLogic socialLogic = Get.put(SocialLogic());

  final PageController controller = PageController();

  /// 当前执行的任务
  Rx<PoolModel?> model = Rx(null);

  RxList<PoolModel> list = <PoolModel>[].obs;
  RxInt index = 0.obs;

  /// 没有更多数据
  bool _noData = false;

  /// 所有任务执行完成
  RxBool allDone = false.obs;

  /// 是否正在执行任务
  bool get runing => _runing;
  bool _runing = false;

  /// 已执行的任务量
  int _number = 0;

  @override
  void onReady() {
    socialLogic.user.listen(_socialUserListen);
    EasyLoading.show();
    loadData();
    super.onReady();
  }

  /// 当前登录用户发生变化
  void _socialUserListen(UserModel? user) {
    EasyLoading.show();
    list.clear();
    model.trigger(null);
    index.trigger(0);
    loadData();
  }

  /// 下一个任务
  void nextTask() {
    _runing = false;
    if (index.value < list.length - 1) {
      controller.nextPage(
        duration: const Duration(milliseconds: 250),
        curve: Curves.linear,
      );
      index += 1;
      model.trigger(list[index.value]);
    }
    if (index.value <= 5 && !_noData) {
      loadData();
    }
    if (index.value == list.length - 1 && _noData && allDone.isFalse) {
      allDone.toggle();
    }
  }

  /// 执行任务
  void launch() {
    _number += 1;
    if (AppConfig.instance.setting.earnCoins != null &&
        AppConfig.instance.setting.earnCoins!.watchAdInterval > 0 &&
        _number % AppConfig.instance.setting.earnCoins!.watchAdInterval == 0 &&
        !AppConfig.instance.box.hasData('earnCoinsAdAndAdTaskIntervel')) {
      Get.dialog(
        ADTaskAlert(),
        useSafeArea: false,
        barrierDismissible: false,
      );
    } else {
      if (EasyLoading.isShow) return;
      _runing = true;
      try {
        launchUrlString(
          model.value!.link,
          mode: LaunchMode.externalApplication,
        );
      } catch (e) {
        nextTask();
      }
    }
  }

  /// 获取任务
  Future<void> loadData() async {
    if (socialLogic.user.value == null) {
      EasyLoading.dismiss();
      return;
    }
    Response response = await Api().request(
      '/Pool.getPools',
      platform: socialLogic.user.value!.platform,
      data: {
        'username': socialLogic.user.value!.username,
      },
    );
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
    if (response.isList) {
      if (response.result.isEmpty) {
        _noData = true;
      } else {
        if (allDone.isTrue) {
          allDone.toggle();
        }
        _noData = false;
        list.addAll(
          response.result.map<PoolModel>((v) => PoolModel.fromJson(v)).toList(),
        );
        if (model.value == null) {
          model.trigger(list.first);
        }
      }
    }
  }
}
