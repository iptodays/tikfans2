/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:50:06
 * @FilePath: /tikfans/lib/models/use_turntable.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class UseTurntableModel {
  /// 转盘回报
  late final int reward;

  /// 设备最新金币数
  late final int coins;

  UseTurntableModel.fromJson(Map<String, dynamic> json) {
    reward = int.parse('${json['reward']}');
    coins = int.parse('${json['coins']}');
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['reward'] = reward;
    json['coins'] = coins;
    return json;
  }
}
