/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-03 18:41:57
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-12 16:45:50
 * @FilePath: /tikfans2/lib/logic/coins.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/logic/coin_task.dart';
import 'package:tikfans2/logic/setting.dart';
import 'package:tikfans2/logic/task.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/ad_floating_ball.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class CoinsLogic extends FullLifeCycleController with FullLifeCycleMixin {
  final SettingLogic _settingLogic = Get.put(SettingLogic());
  final CoinTaskLogic _coinTaskLogic = Get.put(CoinTaskLogic());
  final TaskLogic _taskLogic = Get.find<TaskLogic>();

  /// 金币数
  final RxInt coins = AppConfig.instance.setting.device.coins.obs;

  @override
  void onInit() {
    coins.listen((val) {
      AppConfig.instance.setting.device.coins = val;
    });
    super.onInit();
  }

  @override
  void onReady() {
    if (AppConfig.instance.setting.adTasks.isNotEmpty) {
      Overlay.of(Get.overlayContext!)!.insert(
        OverlayEntry(
          builder: (_) {
            return ADFloatingBallView();
          },
        ),
      );
    }

    super.onReady();
  }

  /// 更新金币数
  void updateCoins(int val) {
    coins.trigger(val);
  }

  /// 完成任务
  Future<void> _poolFinished() async {
    EasyLoading.show();
    Response response = await Api().request(
      '/Pool.success',
      platform: _taskLogic.socialLogic.platform.value.platform,
      data: {
        'poolId': _taskLogic.model.value!.id,
        'username': _taskLogic.socialLogic.user.value!.username,
      },
    );
    EasyLoading.dismiss();
    if (response.isOk) {
      updateCoins(response.result);
    } else {
      EasyLoading.showToast(response.message);
    }
    _taskLogic.nextTask();
  }

  /// 看广告
  Future<void> watchAd() async {
    Get.back();
    EasyLoading.show();
    UnityAds.load(
      placementId: 'Rewarded_Android',
      onComplete: (placementId) {
        UnityAds.showVideoAd(
          placementId: placementId,
          onComplete: (placementId) {
            _earnCoinsAdTask();
          },
          onFailed: (placementId, error, errorMessage) {
            EasyLoading.showToast(translate.toast.adError);
          },
        );
      },
      onFailed: (placementId, error, errorMessage) {
        EasyLoading.showToast(translate.toast.adError);
      },
    );
  }

  /// 完成earn coins出现的ad任务
  Future<void> _earnCoinsAdTask() async {
    Response response = await Api().request('/Device.earnCoinsAdTask');
    if (response.isOk) {
      updateCoins(response.result);
    }
  }

  /// 每日签到
  Future<void> dailyCheckIn() async {
    EasyLoading.show();
    Response response = await Api().request(
      '/Device.dailyCheckIn',
    );
    if (response.isOk) {
      EasyLoading.dismiss();
      AppConfig.instance.checkInTime = DateTime.now().add(
        const Duration(days: 1),
      );
      updateCoins(response.result);
      _settingLogic.checkedInComplete();
    } else {
      EasyLoading.showToast(response.message);
    }
  }

  /// 应用评分
  Future<void> _rateUsFinished() async {
    if (AppConfig.instance.setting.rateUs!.coins <= 0) return;
    EasyLoading.show();
    Response response = await Api().request('/Device.rateUs');
    if (response.isOk) {
      EasyLoading.dismiss();
      updateCoins(response.result);
      _settingLogic.rateUsComplete();
    } else {
      EasyLoading.showToast(response.message);
    }
  }

  /// 完成金币任务
  Future<void> _coinTaskFinished() async {
    EasyLoading.show();
    Response response = await Api().request(
      '/Device.coinTask',
      data: {'id': _coinTaskLogic.model.id},
    );
    if (response.isOk) {
      EasyLoading.dismiss();
      updateCoins(response.result);
      _coinTaskLogic.resetAll();
    } else {
      EasyLoading.showToast(response.message);
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
    if (_settingLogic.rateUsRunning) {
      _rateUsFinished();
    } else if (_coinTaskLogic.runing) {
      _coinTaskFinished();
    } else if (_taskLogic.runing) {
      _poolFinished();
    }
  }
}
