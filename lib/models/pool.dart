/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-17 18:50:43
 * @FilePath: /tikfans/lib/models/pool.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class PoolModel {
  PoolModel({
    required id,
    required this.type,
    required this.image,
    required this.reward,
  });

  /// 任务id
  late final int id;

  /// 任务类型
  late final String type;

  /// 封面
  late final String image;

  /// 任务地址
  late final String link;

  /// 奖励数量
  late final int reward;

  /// 失败原因
  String? message;

  PoolModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    image = json['image'];
    link = json['link'];
    reward = json['reward'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['type'] = type;
    json['image'] = image;
    json['link'] = link;
    json['reward'] = reward;
    json['messgae'] = message;
    return json;
  }
}
