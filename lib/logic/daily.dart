/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-01-06 14:50:59
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 15:00:38
 * @FilePath: /tikfans2/lib/logic/daily.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:common_utils/common_utils.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class DailyLogic extends IGetxController {
  final CoinsLogic coinsLogic;

  DailyLogic(this.coinsLogic);

  /// 启用签到
  RxBool enabled = true.obs;

  /// 已签到天数
  RxInt checkedInDays = 0.obs;

  final TimerUtil _timerUtil = TimerUtil();

  @override
  void onInit() async {
    _timerUtil.setOnTimerTickCallback(
      (millisUntilFinished) async {
        if (millisUntilFinished ~/ 1000 == 0) {
          await AppConfig.instance.box.remove('dailyCheckIn');
          enabled.trigger(true);
        }
      },
    );
    if (AppConfig.instance.setting.dailyCheckIn != null) {
      checkedInDays.trigger(AppConfig.instance.setting.dailyCheckIn!.days);
      if (AppConfig.instance.box.hasData('dailyCheckIn')) {
        if (AppConfig.instance.box.read('dailyCheckIn') <=
            DateUtil.getNowDateMs()) {
          await AppConfig.instance.box.remove('dailyCheckIn');
          enabled.trigger(true);
        } else {
          enabled.trigger(false);
          _timerUtil
            ..setTotalTime(AppConfig.instance.box.read('dailyCheckIn') -
                DateUtil.getNowDateMs())
            ..setInterval(1000)
            ..startCountDown();
        }
      }
    }
    super.onInit();
  }

  /// 签到
  Future<void> checkIn() async {
    if (enabled.isFalse || EasyLoading.isShow) return;
    EasyLoading.show();
    Response response = await Api().request('/Device.dailyCheckIn');
    if (response.isOk) {
      EasyLoading.dismiss();
      AppConfig.instance.setting.dailyCheckIn!.days += 1;
      checkedInDays += 1;
      await AppConfig.instance.box.write(
        'dailyCheckIn',
        DateTime.now().add(const Duration(days: 1)).millisecondsSinceEpoch,
      );
      enabled.trigger(false);
      coinsLogic.updateCoins(response.result);
    } else {
      EasyLoading.showToast(response.message);
    }
  }
}
