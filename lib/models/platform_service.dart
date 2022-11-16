/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:49:06
 * @FilePath: /tikfans/lib/models/platform_service.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:tikfans2/models/earn_coin.dart';
import 'package:tikfans2/models/free_follower.dart';
import 'package:tikfans2/models/service.dart';

class PlatformServiceModel {
  /// 金币奖励
  late final EarnCoinModel earnCoins;

  /// 免费关注
  FreeFollowerModel? freeFollowers;

  /// 金币关注服务
  late final List<ServiceModel> followers;

  /// 金币点赞服务
  late final List<ServiceModel> likes;

  /// 货币观看服务
  late final List<ServiceModel> views;

  /// 货币分享服务
  late final List<ServiceModel> shares;

  /// 转推
  late final List<ServiceModel> retweets;

  PlatformServiceModel.fromJson(Map<String, dynamic> json) {
    earnCoins = EarnCoinModel.fromJson(json['earnCoins']);
    if (json['freeFollowers'] != null) {
      freeFollowers = FreeFollowerModel.fromJson(json['freeFollowers']);
    }
    followers = [];
    if (json['goldenFollowers'] != null) {
      if (json['goldenFollowers'] is Map) {
        Map<String, dynamic> map = json['goldenFollowers'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          followers.add(
            ServiceModel(
              sku: key,
              cls: 'goldenFollowers',
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        followers.addAll(json['goldenFollowers']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    if (json['followers'] != null) {
      if (json['followers'] is Map) {
        Map<String, dynamic> map = json['followers'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          followers.add(
            ServiceModel(
              cls: 'followers',
              sku: key,
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        followers.addAll(json['followers']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    List<ServiceModel> f1 =
        followers.where((element) => element.price == 0).toList();
    List<ServiceModel> f2 = followers
        .where((element) => element.price > 0 && !element.virtual)
        .toList();
    List<ServiceModel> f3 = followers
        .where((element) => element.price > 0 && element.virtual)
        .toList();
    f1.sort((a, b) => a.price.compareTo(b.price));
    f2.sort((a, b) => a.price.compareTo(b.price));
    f3.sort((a, b) => a.price.compareTo(b.price));
    followers.clear();
    followers.addAll(f1);
    followers.addAll(f2);
    followers.addAll(f3);

    likes = [];
    if (json['goldenLikes'] != null) {
      if (json['goldenLikes'] is Map) {
        Map<String, dynamic> map = json['goldenLikes'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          likes.add(
            ServiceModel(
              cls: 'goldenLikes',
              sku: key,
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        likes.addAll(json['goldenLikes']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    if (json['likes'] != null) {
      if (json['likes'] is Map) {
        Map<String, dynamic> map = json['likes'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          likes.add(
            ServiceModel(
              cls: 'likes',
              sku: key,
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        likes.addAll(json['likes']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    List<ServiceModel> l1 =
        likes.where((element) => element.price == 0).toList();
    List<ServiceModel> l2 = likes
        .where((element) => element.price > 0 && !element.virtual)
        .toList();
    List<ServiceModel> l3 =
        likes.where((element) => element.price > 0 && element.virtual).toList();
    l1.sort((a, b) => a.price.compareTo(b.price));
    l2.sort((a, b) => a.price.compareTo(b.price));
    l3.sort((a, b) => a.price.compareTo(b.price));
    likes.clear();
    likes.addAll(l1);
    likes.addAll(l2);
    likes.addAll(l3);

    views = [];
    if (json['goldenViews'] != null) {
      if (json['goldenViews'] is Map) {
        Map<String, dynamic> map = json['goldenViews'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          views.add(
            ServiceModel(
              cls: 'goldenViews',
              sku: key,
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        views.addAll(json['goldenViews']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    if (json['views'] != null) {
      if (json['views'] is Map) {
        Map<String, dynamic> map = json['views'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          views.add(
            ServiceModel(
              cls: 'goldenViews',
              sku: key,
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        views.addAll(json['views']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    views.sort((a, b) => a.price.compareTo(b.price));

    shares = [];
    if (json['goldenShares'] != null) {
      if (json['goldenShares'] is Map) {
        Map<String, dynamic> map = json['goldenShares'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          shares.add(
            ServiceModel(
              cls: 'goldenShares',
              sku: key,
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        shares.addAll(json['goldenShares']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    if (json['shares'] != null) {
      if (json['shares'] is Map) {
        Map<String, dynamic> map = json['shares'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          shares.add(
            ServiceModel(
              cls: 'goldenShares',
              sku: key,
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        shares.addAll(json['shares']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    shares.sort((a, b) => a.price.compareTo(b.price));

    retweets = [];
    if (json['goldenRetweets'] != null) {
      if (json['goldenRetweets'] is Map) {
        Map<String, dynamic> map = json['goldenRetweets'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          retweets.add(
            ServiceModel(
              cls: 'goldenRetweets',
              sku: key,
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        retweets.addAll(json['goldenRetweets']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    if (json['retweets'] != null) {
      if (json['retweets'] is Map) {
        Map<String, dynamic> map = json['retweets'];
        for (String key in map.keys) {
          Map<String, dynamic> params = map[key];
          retweets.add(
            ServiceModel(
              cls: 'goldenRetweets',
              sku: key,
              type: params['type'],
              count: params['count'],
              price: double.parse('${params['price']}'),
              discount: params['discount'],
              productId: params['productId'],
            ),
          );
        }
      } else {
        retweets.addAll(json['retweets']
            .map<ServiceModel>(
              (v) => ServiceModel.fromJson(v),
            )
            .toList());
      }
    }
    retweets.sort((a, b) => a.price.compareTo(b.price));
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['earnCoins'] = earnCoins.toJson();
    json['freeFollowers'] = freeFollowers?.toJson();
    json['followers'] = followers.map((e) => e.toJson()).toList();
    json['likes'] = likes.map((e) => e.toJson()).toList();
    json['views'] = views.map((e) => e.toJson()).toList();
    json['shares'] = shares.map((e) => e.toJson()).toList();
    json['retweets'] = retweets.map((e) => e.toJson()).toList();
    return json;
  }
}
