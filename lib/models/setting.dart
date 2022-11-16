/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-11-06 14:26:49
 * @FilePath: /tikfans/lib/models/setting.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:tikfans2/models/ad_task.dart';
import 'package:tikfans2/models/ads.dart';
import 'package:tikfans2/models/coin_task.dart';
import 'package:tikfans2/models/coin_turntable.dart';
import 'package:tikfans2/models/contact.dart';
import 'package:tikfans2/models/daily_check_in.dart';
import 'package:tikfans2/models/device.dart';
import 'package:tikfans2/models/earn_coin.dart';
import 'package:tikfans2/models/global_tip.dart';
import 'package:tikfans2/models/invite_friend.dart';
import 'package:tikfans2/models/platform.dart';
import 'package:tikfans2/models/rate_us.dart';

class SettingModel {
  SettingModel({
    required this.isInReviewing,
  });

  /// 是否为审核状态
  late final bool isInReviewing;

  /// 联系方式
  late final List<ContactModel> contacts;

  /// 广告位控制
  AdsModel? ads;

  /// 签到信息
  DailyCheckInModel? dailyCheckIn;

  /// 金币转盘
  CoinTurntableModel? coinTurntable;

  /// 广告任务
  late final List<AdTaskModel> adTasks;

  /// 金币任务
  late final List<CoinTaskModel> coinTasks;

  /// 应用启动后提示
  GlobalTipModel? globalTip;

  /// 设备信息
  late DeviceModel device;

  /// 支持的平台
  late final List<PlatformModel> platforms;

  /// 金币赚取
  EarnCoinModel? earnCoins;

  /// 邀请好友
  InviteFriendModel? inviteFriends;

  /// 评价
  RateUsModel? rateUs;

  /// 原始数据
  late Map<String, dynamic> json;

  SettingModel.fromJson(this.json) {
    isInReviewing = json['isInReviewing'];
    if (json['ads'] != null) {
      ads = AdsModel.fromJson(json['ads']);
    }
    contacts = [];
    if (json['contacts'] != null) {
      contacts.addAll(json['contacts']
          .map<ContactModel>(
            (v) => ContactModel.fromJson(v),
          )
          .toList());
    }

    platforms = [];
    if (json['platforms'] != null) {
      platforms.addAll(json['platforms']
          .map<PlatformModel>((v) => PlatformModel.fromJson(v))
          .toList());
    }
    if (json['dailyCheckIn'] != null) {
      dailyCheckIn = DailyCheckInModel.fromJson(json['dailyCheckIn']);
    }
    if (json['rateUs'] != null) {
      rateUs = RateUsModel.fromJson(json['rateUs']);
    }
    if (json['coinTurntable'] != null) {
      coinTurntable = CoinTurntableModel.fromJson(json['coinTurntable']);
    }
    if (json['inviteFriends'] != null) {
      inviteFriends = InviteFriendModel.fromJson(json['inviteFriends']);
    }

    adTasks = [];
    if (json['adTasks'] != null) {
      adTasks.addAll(json['adTasks']
          .map<AdTaskModel>((v) => AdTaskModel.fromJson(v))
          .toList());
    }

    coinTasks = [];
    if (json['coinTasks'] != null) {
      coinTasks.addAll(json['coinTasks']
          .map<CoinTaskModel>((v) => CoinTaskModel.fromJson(v))
          .toList());
    }
    if (json['globalTip'] != null) {
      globalTip = GlobalTipModel.fromJson(json['globalTip']);
    }
    device = DeviceModel.fromJson(json['device']);
    if (json['earnCoins'] != null) {
      earnCoins = EarnCoinModel.fromJson(json['earnCoins']);
    } else {
      earnCoins = EarnCoinModel.fromJson(
        {
          'watchAdInterval': 10 * 1000,
          'watchAdReward': 10,
        },
      );
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['isInReviewing'] = isInReviewing;
    json['ads'] = ads?.toJson();
    json['contacts'] = contacts.map((e) => e.toJson()).toList();
    json['platforms'] = platforms.map((e) => e.toJson()).toList();
    json['dailyCheckIn'] = dailyCheckIn?.toJson();
    json['rateUs'] = rateUs?.toJson();
    json['coinTurntable'] = coinTurntable?.toJson();
    json['inviteFriends'] = inviteFriends?.toJson();
    json['adTasks'] = adTasks.map((e) => e.toJson()).toList();
    json['coinTasks'] = coinTasks.map((e) => e.toJson()).toList();
    json['globalTip'] = globalTip?.toJson();
    json['device'] = device.toJson();
    return json;
  }
}
