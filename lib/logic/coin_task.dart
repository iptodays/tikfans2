/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-12 15:44:15
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 19:04:30
 * @FilePath: /tikfans2/lib/logic/coin_task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/models/coin_task.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CoinTaskLogic extends IGetxController {
  final CoinsLogic coinsLogic;

  CoinTaskLogic(this.coinsLogic);

  /// 完成金币任务
  Future<void> execution(CoinTaskModel model) async {
    if (model.url != null) {
      launchUrlString(
        model.url!,
        mode: LaunchMode.externalApplication,
      );
    }
    if (model.coins > 0) {
      Response response = await Api().request(
        '/Device.coinTask',
        data: {'id': '${model.id}'},
      );
      if (response.isOk) {
        coinsLogic.updateCoins(response.result);
        AppConfig.instance.setting.coinTasks
            .singleWhere((e) => e.id == model.id)
            .coins = 0;
        update();
      } else {
        EasyLoading.showToast(response.message);
      }
    }
  }
}
