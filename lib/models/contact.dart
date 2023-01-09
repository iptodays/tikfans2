/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:31:21
 * @FilePath: /tikfans2/lib/models/contact.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class ContactModel {
  /// 平台
  late final String key;

  /// url
  late final String value;

  ContactModel.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['key'] = key;
    json['value'] = value;
    return json;
  }
}
