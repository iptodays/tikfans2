/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 19:18:51
 * @FilePath: /tikfans/lib/models/global_tip.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class GlobalTipModel {
  /// 标题
  late final String title;

  /// 描述
  late final String description;

  /// 跳转地址
  String? url;

  /// 是否强制
  late final bool force;

  GlobalTipModel({
    required this.title,
    required this.description,
    required this.force,
    this.url,
  });

  GlobalTipModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    url = json['url'];
    force = json['force'] ?? false;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['title'] = title;
    json['description'] = description;
    json['url'] = url;
    json['force'] = force;
    return json;
  }
}
