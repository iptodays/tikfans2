/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-04 18:00:10
 * @FilePath: /tikfans/lib/models/rate_us.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class RateUsModel {
  /// 金币数
  late int coins;

  RateUsModel.fromJson(Map<String, dynamic> json) {
    coins = json['coins'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['coins'] = coins;
    return json;
  }
}
