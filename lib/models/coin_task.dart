/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:31:11
 * @FilePath: /tikfans2/lib/models/coin_task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class CoinTaskModel {
  /// id
  late final int id;

  /// 图标
  late final String logo;

  /// 任务名称
  late final String name;

  /// 简介
  String? description;

  /// 任务可获得的金币数
  late int coins;

  /// 任务跳转地址
  String? url;

  CoinTaskModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logo = json['logo'];
    name = json['name'];
    coins = json['coins'] ??= 0;
    description = json['description'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = id;
    json['logo'] = logo;
    json['name'] = name;
    json['coins'] = coins;
    json['url'] = url;
    json['description'] = description;
    return json;
  }
}
