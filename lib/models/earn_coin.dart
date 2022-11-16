/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:30:43
 * @FilePath: /tikfans/lib/models/earn_coin.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class EarnCoinModel {
  /// 广告间隔
  late final int watchAdInterval;

  /// 广告奖励
  late final int watchAdReward;

  EarnCoinModel.fromJson(Map<String, dynamic> json) {
    watchAdInterval = json['watchAdInterval'];
    watchAdReward = json['watchAdReward'];
  }

  Map<String, dynamic> toJson() {
    return {
      'watchAdInterval': watchAdInterval,
      'watchAdReward': watchAdReward,
    };
  }
}
