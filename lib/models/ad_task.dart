/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:30:59
 * @FilePath: /tikfans2/lib/models/ad_task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class AdTaskModel {
  /// 任务id
  late final int id;

  /// 广告平台
  late final String platform;

  /// 广告类型
  late final String type;

  /// 获得的金币数
  late final int coins;

  /// 倒计时时间
  late final int interval;

  AdTaskModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    platform = json['platform'];
    type = json['type'];
    coins = json['coins'];
    interval = json['interval'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = id;
    json['platform'] = platform;
    json['type'] = type;
    json['coins'] = coins;
    json['interval'] = interval;
    return json;
  }
}
