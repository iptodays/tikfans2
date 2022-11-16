/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:49:13
 * @FilePath: /tikfans/lib/models/platform.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class PlatformModel {
  /// 平台key
  late final String platform;

  /// 平台名
  late final String name;

  /// logo
  late final String logo;

  PlatformModel({
    required this.platform,
    required this.name,
    required this.logo,
  });

  PlatformModel.fromJson(Map<String, dynamic> json) {
    platform = json['platform'];
    name = json['name'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['platform'] = platform;
    json['name'] = name;
    json['logo'] = logo;
    return json;
  }
}
