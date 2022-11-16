/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-19 22:35:03
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-11-16 16:08:34
 * @FilePath: /tikfans2/lib/logic/ad.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:common_utils/common_utils.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/models/ad_task.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:timezone/timezone.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class ADLogic extends IGetxController {
  final CoinsLogic logic = Get.find<CoinsLogic>();
  final TimerUtil _timerUtil = TimerUtil();

  List<AdTaskModel> get _adTasks => AppConfig.instance.setting.adTasks;

  /// 当前要执行的广告任务
  Rx<AdTaskModel?> model = Rx(null);

  @override
  void onInit() {
    _timerUtil.setOnTimerTickCallback((millisUntilFinished) {
      if (millisUntilFinished ~/ 1000 == 0) {
        _findADTaskModel();
      }
    });

    super.onInit();
  }

  @override
  void onReady() {
    _findADTaskModel();
    super.onReady();
  }

  /// 查找可用的广告对象
  Future<void> _findADTaskModel() async {
    if (_adTasks.isNotEmpty) {
      if (AppConfig.instance.box.hasData('watchEarn')) {
        int watchEarnActivationTime = AppConfig.instance.box.read(
              'watchEarnActivationTime',
            ) ??
            0;
        if (DateUtil.getNowDateMs() < watchEarnActivationTime) {
          if (model.value != null) {
            model.trigger(null);
          }
          _timerUtil
            ..setInterval(1000)
            ..setTotalTime(watchEarnActivationTime - DateUtil.getNowDateMs())
            ..startCountDown();
          return;
        }
        AdTaskModel adTaskModel = AdTaskModel.fromJson(
          AppConfig.instance.box.read('watchEarn'),
        );
        int index = _adTasks.indexWhere(
          (element) => element.id == adTaskModel.id,
        );
        if (index == -1) {
          index == 0;
        }
        model.trigger(_adTasks[index]);
      } else {
        model.trigger(_adTasks.first);
      }
    } else if (model.value != null) {
      model.trigger(null);
    }
    if (model.value == null) {
      await AppConfig.instance.box.remove('watchEarnActivationTime');
    }
  }

  /// 观看广告
  Future<void> watchAd() async {
    EasyLoading.show();
    String id = 'Rewarded_Android';
    if (model.value!.type == 'interstitial') {
      id = 'Interstitial_Android';
    }
    UnityAds.load(
      placementId: id,
      onComplete: (placementId) {
        UnityAds.showVideoAd(
          placementId: placementId,
          onSkipped: (placementId) {
            if (EasyLoading.isShow) {
              EasyLoading.dismiss();
            }
          },
          onFailed: (placementId, error, errorMessage) {
            EasyLoading.showToast(translate.toast.adError);
            _notification();
          },
          onComplete: (placementId) {
            _adFinshed();
          },
        );
      },
      onFailed: (placementId, error, errorMessage) {
        EasyLoading.showToast(translate.toast.adError);
        _notification();
      },
    );
  }

  /// 完成广告任务
  Future<void> _adFinshed() async {
    Response response = await Api().request(
      'Device.adTask',
      data: {
        'id': '${model.value!.id}',
      },
    );
    if (response.isOk) {
      logic.updateCoins(response.result);
    }
    _notification();
  }

  /// 设置本地推送
  Future<void> _notification() async {
    PermissionStatus status =
        await Permission.ignoreBatteryOptimizations.status;
    if (status.isDenied) {
      await Permission.ignoreBatteryOptimizations.request();
    }
    await AppConfig.instance.localNotifications.cancelAll();
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      '${DateUtil.getNowDateMs()}',
      'ADTASK LocalNotifications',
      importance: Importance.max,
      priority: Priority.high,
    );
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );
    int ms = DateUtil.getNowDateMs() + model.value!.interval;
    await AppConfig.instance.localNotifications.zonedSchedule(
      0,
      AppConfig.instance.package.appName,
      translate.localNotification.adTaskReady,
      TZDateTime.fromMillisecondsSinceEpoch(
        getLocation(AppConfig.instance.timezone),
        ms,
      ),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
    int index = _adTasks.indexWhere((element) => element.id == model.value!.id);
    if (index == -1 || index == _adTasks.length - 1) {
      index = 0;
    } else {
      index += 1;
    }
    await AppConfig.instance.box.write(
      'watchEarn',
      _adTasks[index].toJson(),
    );

    await AppConfig.instance.box.write(
      'watchEarnActivationTime',
      ms,
    );
    _timerUtil
      ..setInterval(1000)
      ..setTotalTime(ms - DateUtil.getNowDateMs())
      ..startCountDown();
    model.trigger(null);
  }
}
