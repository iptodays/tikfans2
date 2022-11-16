/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:31:30
 * @FilePath: /tikfans/lib/models/daily_check_in.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class DailyCheckInModel {
  /// 已签到天数
  late int days;

  /// 下次签到时间
  late int countdown;

  /// 奖励
  late final List<int> rewards;

  DailyCheckInModel.fromJson(Map<String, dynamic> json) {
    days = json['days'];
    countdown = json['countdown'];
    rewards = json['rewards'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['days'] = days;
    json['countdown'] = countdown;
    json['rewards'] = rewards;
    return json;
  }
}
