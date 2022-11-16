/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:49:21
 * @FilePath: /tikfans/lib/models/post.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class PostModel {
  /// 帖子地址
  late final String link;

  /// 封面
  late final String cover;

  /// 分享数
  late final int shareCount;

  /// 点赞数
  late final int likeCount;

  /// 评论数
  late final int commentCount;

  /// 播放数
  late final int playCount;

  PostModel.fromJson(Map<dynamic, dynamic> json) {
    link = json['link'];
    cover = json['cover'];
    shareCount = json['shareCount'] ?? 0;
    likeCount = json['likeCount'] ?? 0;
    commentCount = json['commentCount'] ?? 0;
    playCount = json['playCount'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['link'] = link;
    json['cover'] = cover;
    json['likeCount'] = likeCount;
    json['shareCount'] = shareCount;
    json['commentCount'] = commentCount;
    json['playCount'] = playCount;
    return json;
  }
}
