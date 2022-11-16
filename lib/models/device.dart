/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:31:34
 * @FilePath: /tikfans/lib/models/device.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class DeviceModel {
  /// 当前设备金币数
  late int coins;

  /// 当前设备的邀请码
  late final String invitingCode;

  /// 当前使用的性别
  String? gender;

  /// 希望获取的性别
  String? preferGender;

  /// 邮箱
  String? oauthEmail;

  /// 当前设备使用的邀请码
  String? invitedCode;

  DeviceModel.fromJson(Map<String, dynamic> json) {
    coins = json['coins'];
    invitingCode = json['invitingCode'];
    invitedCode = json['invitedCode'];
    gender = json['gender'];
    preferGender = json['preferGender'];
    oauthEmail = json['oauthEmail'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['invitingCode'] = invitingCode;
    json['invitedCode'] = invitedCode;
    json['coins'] = coins;
    json['gender'] = gender;
    json['preferGender'] = preferGender;
    json['oauthEmail'] = oauthEmail;
    return json;
  }
}
