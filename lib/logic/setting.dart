/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-05 20:29:09
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-10 10:41:09
 * @FilePath: /tikfans/lib/logic/setting.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:common_utils/common_utils.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingLogic extends IGetxController {
  /// 是否启用好评奖励机制
  final RxBool enabled = (AppConfig.instance.setting.rateUs != null &&
          AppConfig.instance.setting.rateUs!.coins > 0)
      .obs;

  /// 是否正在执行评分
  bool get rateUsRunning => _rateUsRunning;
  bool _rateUsRunning = false;

  /// 已签到天数
  RxInt checkedInDays =
      (AppConfig.instance.setting.dailyCheckIn?.days ?? 0).obs;

  /// 是否已签到
  RxBool hasCheckedIn = (AppConfig.instance.checkInTime != null).obs;

  /// 执行评分操作
  Future<void> rateUs() async {
    _rateUsRunning = true;
    launchUrlString(
      'https://play.google.com/store/apps/details?id=${AppConfig.instance.package.packageName}',
      mode: LaunchMode.externalApplication,
    );
  }

  /// 完成评分
  Future<void> rateUsComplete() async {
    _rateUsRunning = false;
    if (enabled.isTrue) {
      AppConfig.instance.setting.rateUs!.coins = 0;
      enabled.trigger(false);
    }
  }

  /// 验证签到状态
  Future<void> verifyCheckIn() async {
    if (AppConfig.instance.checkInTime != null &&
        AppConfig.instance.checkInTime!.millisecondsSinceEpoch <=
            DateUtil.getNowDateMs()) {
      resetCheckIn();
    }
  }

  /// 今日已签到成功
  Future<void> checkedInComplete() async {
    checkedInDays.trigger(checkedInDays.value + 1);
    hasCheckedIn.trigger(true);
  }

  /// 重置签到状态
  Future<void> resetCheckIn() async {
    AppConfig.instance.checkInTime = null;
    hasCheckedIn.trigger(false);
  }
}
