/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-19 22:35:03
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-09 14:26:36
 * @FilePath: /tikfans2/lib/logic/ad_task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:common_utils/common_utils.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/models/ad_task.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class ADTaskLogic extends IGetxController {
  final CoinsLogic coinsLogic;

  ADTaskLogic(this.coinsLogic);

  Rx<AdTaskModel?> model = Rx(null);

  int get _index {
    if (!AppConfig.instance.box.hasData('watchEarnIndex')) {
      return 0;
    }
    int watchEarnIndex = AppConfig.instance.box.read('watchEarnIndex');
    if (watchEarnIndex >= AppConfig.instance.setting.adTasks.length) {
      return 0;
    }
    return watchEarnIndex;
  }

  final TimerUtil _timerUtil = TimerUtil();

  @override
  Future<void> onInit() async {
    _timerUtil.setOnTimerTickCallback(
      (millisUntilFinished) {
        if (millisUntilFinished ~/ 1000 == 0) {
          AppConfig.instance.box.remove('watchEarn');
          model.trigger(AppConfig.instance.setting.adTasks[_index]);
        }
      },
    );

    if (AppConfig.instance.setting.adTasks.isNotEmpty) {
      if (AppConfig.instance.box.hasData('watchEarn')) {
        if (AppConfig.instance.box.read('watchEarn') is! int) {
          await AppConfig.instance.box.remove('watchEarn');
          await AppConfig.instance.box.write('watchEarn', 0);
        }
        if (AppConfig.instance.box.read('watchEarn') <=
            DateUtil.getNowDateMs()) {
          await AppConfig.instance.box.remove('watchEarn');
        } else {
          _timerUtil
            ..setTotalTime(AppConfig.instance.box.read('watchEarn') -
                DateUtil.getNowDateMs())
            ..setInterval(1000)
            ..startCountDown();
        }
      }
      if (!AppConfig.instance.box.hasData('watchEarn')) {
        model.trigger(AppConfig.instance.setting.adTasks[_index]);
      }
    }
    super.onInit();
  }

  /// 观看广告
  Future<void> watchAd() async {
    if (model.value == null || EasyLoading.isShow) return;
    EasyLoading.show();
    switch (model.value!.type) {
      case 'interstitial':
        UnityAds.load(
          placementId: 'Interstitial_Android',
          onFailed: (placementId, error, errorMessage) => _adFailed(),
          onComplete: (placementId) {
            UnityAds.showVideoAd(
              placementId: placementId,
              onFailed: (placementId, error, errorMessage) => _adFailed(),
              onComplete: (placementId) => _adComplete(),
            );
          },
        );
        break;
      case 'rewarded':
        UnityAds.load(
          placementId: 'Rewarded_Android',
          onFailed: (placementId, error, errorMessage) => _adFailed(),
          onComplete: (placementId) {
            UnityAds.showVideoAd(
              placementId: placementId,
              onComplete: (placementId) => _adComplete(),
              onFailed: (placementId, error, errorMessage) => _adFailed(),
            );
          },
        );
        break;
      default:
        EasyLoading.dismiss();
    }
  }

  /// 广告加载/显示失败
  Future<void> _adFailed() async {
    EasyLoading.showToast(translate.toast.adError);
  }

  /// 广告显示成功
  Future<void> _adComplete() async {
    EasyLoading.show();
    Response response = await Api().request(
      '/Device.adTask',
      data: {'id': '${model.value!.id}'},
    );
    if (response.isOk) {
      EasyLoading.dismiss();
      coinsLogic.updateCoins(response.result);
      await AppConfig.instance.box.write('watchEarnIndex', _index + 1);
      await AppConfig.instance.box.write(
        'watchEarn',
        DateUtil.getNowDateMs() + model.value!.interval,
      );
      _timerUtil
        ..setTotalTime(model.value!.interval)
        ..setInterval(1000)
        ..startCountDown();
      model.trigger(null);
    } else {
      EasyLoading.showToast(response.message);
    }
  }
}
