/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-03 14:55:44
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-09 14:29:11
 * @FilePath: /tikfans2/lib/logic/task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/pool.dart';
import 'package:tikfans2/models/user.dart';
import 'package:tikfans2/pages/task/alert/ad_task.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TaskLogic extends FullLifeCycleController with FullLifeCycleMixin {
  /// 用户
  final SocialLogic socialLogic;

  /// 金币
  final CoinsLogic coinsLogic;

  TaskLogic({
    required this.socialLogic,
    required this.coinsLogic,
  });

  /// 当前执行的任务
  Rx<PoolModel?> model = Rx(null);

  /// 任务列表
  RxList<PoolModel> list = <PoolModel>[].obs;

  /// 是否正在执行任务
  bool _runing = false;

  /// 已执行的任务量
  int _taskNum = 0;

  /// 最后执行任务的id
  int? lastTaskId;

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
    loadData();
  }

  /// 下一个任务
  void nextTask() {
    if (list.isNotEmpty) {
      model.trigger(list.removeAt(0));
      if (list.length <= 5) {
        loadData();
      }
    } else {
      model.trigger(null);
    }
  }

  /// 执行任务
  void execution() {
    if (model.value == null) return;
    if (lastTaskId == model.value!.id) {
      nextTask();
    }
    _taskNum += 1;
    if (AppConfig.instance.setting.earnCoins != null &&
        AppConfig.instance.setting.earnCoins!.watchAdInterval > 0 &&
        _taskNum % AppConfig.instance.setting.earnCoins!.watchAdInterval == 0) {
      Get.dialog(
        ADTaskAlert(),
        useSafeArea: false,
        barrierDismissible: false,
      );
    } else {
      _runing = true;
      lastTaskId = model.value!.id;
      try {
        launchUrlString(
          model.value!.link,
          mode: LaunchMode.externalApplication,
        );
      } catch (e) {
        _runing = false;
        nextTask();
      }
    }
  }

  /// 看广告
  Future<void> watchAd() async {
    Get.back();
    EasyLoading.show();
    UnityAds.load(
      placementId: 'Rewarded_Android',
      onFailed: (placementId, error, errorMessage) {
        EasyLoading.showToast(translate.toast.adError);
      },
      onComplete: (placementId) {
        UnityAds.showVideoAd(
          placementId: placementId,
          onFailed: (placementId, error, errorMessage) {
            EasyLoading.showToast(translate.toast.adError);
          },
          onComplete: (placementId) async {
            EasyLoading.show();
            Response response = await Api().request('/Device.earnCoinsAdTask');
            if (response.isOk) {
              EasyLoading.dismiss();
              coinsLogic.updateCoins(response.result);
            } else {
              EasyLoading.showToast(response.message);
            }
          },
        );
      },
    );
  }

  /// 完成关注/点赞任务
  Future<void> _poolFinished() async {
    EasyLoading.show();
    Response response = await Api().request(
      '/Pool.success',
      data: {
        'poolId': '${model.value!.id}',
        'username': socialLogic.user.value!.username,
        'platform': socialLogic.platform.value.platform,
      },
    );
    _runing = false;
    if (response.isOk) {
      coinsLogic.updateCoins(response.result);
    } else {
      EasyLoading.showToast(response.message);
    }
    nextTask();
  }

  /// 获取任务
  Future<void> loadData() async {
    if (socialLogic.user.value == null) {
      EasyLoading.dismiss();
      return;
    }
    Response response = await Api().request(
      '/Pool.getPools',
      data: {
        'username': socialLogic.user.value!.username,
        'platform': socialLogic.user.value!.platform,
      },
    );
    EasyLoading.dismiss();
    if (response.isList && response.result.isNotEmpty) {
      list.addAll(
        response.result.map<PoolModel>((v) => PoolModel.fromJson(v)).toList(),
      );
      if (model.value == null) {
        model.trigger(list.first);
      }
    }
  }

  @override
  void onDetached() {}

  @override
  void onInactive() {}

  @override
  void onPaused() {}

  @override
  void onResumed() {
    if (_runing) {
      if (model.value != null) {
        _poolFinished();
      } else {
        _runing = false;
        nextTask();
      }
    }
  }
}
