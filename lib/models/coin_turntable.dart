/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:31:16
 * @FilePath: /tikfans2/lib/models/coin_turntable.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class CoinTurntableModel {
  /// 价格
  late final int price;

  /// 奖品列表
  late final List<int> rewards;

  CoinTurntableModel.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    rewards = json['rewards'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['price'] = price;
    json['rewards'] = rewards;
    return json;
  }
}
