/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-12-11 21:27:54
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-09 14:09:41
 * @FilePath: /tikfans2/lib/bindings/binding.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:tikfans2/logic/ad_task.dart';
import 'package:tikfans2/logic/coin_task.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/logic/daily.dart';
import 'package:tikfans2/logic/rate_us.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/logic/tabbar.dart';
import 'package:tikfans2/logic/task.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => CoinsLogic())
      ..lazyPut(() => ADTaskLogic(Get.find<CoinsLogic>()))
      ..lazyPut(() => TabBarLogic())
      ..lazyPut(() => SocialLogic())
      ..lazyPut(() => TaskLogic(
            socialLogic: Get.find<SocialLogic>(),
            coinsLogic: Get.find<CoinsLogic>(),
          ))
      ..lazyPut(() => DailyLogic(Get.find<CoinsLogic>()))
      ..lazyPut(() => RateUsLogic(Get.find<CoinsLogic>()))
      ..lazyPut(() => CoinTaskLogic(Get.find<CoinsLogic>()));
  }
}
