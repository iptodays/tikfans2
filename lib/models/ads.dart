/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-22 15:27:12
 * @FilePath: /tikfans2/lib/models/ads.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class AdsModel {
  /// admob显示比例
  late final double admobRate;

  /// 开屏广告显示比例
  late final double launchAdRate;

  /// earnCoins和adTask的互斥间隔，单位毫秒
  late final int earnCoinsAdAndAdTaskIntervel;

  AdsModel.fromJson(Map<String, dynamic> json) {
    admobRate = double.parse('${json['admobRate']}');
    launchAdRate = double.parse('${json['launchAdRate']}');
    earnCoinsAdAndAdTaskIntervel = json['earnCoinsAdAndAdTaskIntervel'];
  }

  Map<String, dynamic> toJson() {
    return {
      'admobRate': admobRate,
      'launchAdRate': launchAdRate,
      'earnCoinsAdAndAdTaskIntervel': earnCoinsAdAndAdTaskIntervel,
    };
  }
}
