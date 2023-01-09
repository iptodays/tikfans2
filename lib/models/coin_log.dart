/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:31:06
 * @FilePath: /tikfans2/lib/models/coin_log.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class CoinLogModel {
  /// id
  late final int id;

  /// 标题
  late final String title;

  /// 类型
  late final String type;

  /// 金币数
  late final int coins;

  /// 创建日期
  late final String createdAt;

  CoinLogModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    coins = json['coins'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = id;
    json['title'] = title;
    json['type'] = type;
    json['coins'] = coins;
    json['createdAt'] = createdAt;
    return json;
  }
}
