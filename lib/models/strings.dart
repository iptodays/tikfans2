/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:32:59
 * @FilePath: /tikfans2/lib/models/strings.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class StringsModel {
  StringsModel({
    required this.title,
    required this.locale,
    required this.zh,
  });

  /// 名称
  late final String title;

  /// 代码
  late final String locale;

  /// 中文
  late final String zh;

  StringsModel.fromJson(Map json) {
    title = json['title'];
    locale = json['locale'];
    zh = json['zh'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['title'] = title;
    json['locale'] = locale;
    json['zh'] = zh;
    return json;
  }
}
