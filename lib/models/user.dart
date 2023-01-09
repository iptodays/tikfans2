/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:50:11
 * @FilePath: /tikfans2/lib/models/user.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class UserModel {
  /// 用户id
  late final String id;

  /// 所属平台
  late final String platform;

  /// 用户名
  late final String username;

  /// 显示名
  late final String fullname;

  /// 头像
  late final String avatar;

  /// 粉丝数
  late int followerCount;

  /// 关注数
  late final int followingCount;

  /// 是否为激活用户
  late bool isActive;

  UserModel.fromJson(Map<dynamic, dynamic> json) {
    id = '${json['id']}';
    platform = json['platform'];
    username = json['username'];
    fullname = json['fullname'];
    avatar = json['avatar'];
    followerCount = json['followerCount'] ?? 0;
    followingCount = json['followingCount'] ?? 0;
    isActive = json['isActive'] ?? false;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['username'] = username;
    json['id'] = id;
    json['fullname'] = fullname;
    json['avatar'] = avatar;
    json['followerCount'] = followerCount;
    json['followingCount'] = followingCount;
    json['isActive'] = isActive;
    json['platform'] = platform;
    return json;
  }
}
