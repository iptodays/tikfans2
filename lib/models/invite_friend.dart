/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:48:32
 * @FilePath: /tikfans2/lib/models/invite_friend.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class InviteFriendModel {
  /// 金币数
  late int coins;

  InviteFriendModel.fromJson(Map<String, dynamic> json) {
    coins = json['coins'];
  }

  Map<String, dynamic> toJson() {
    return {'coins': coins};
  }
}
