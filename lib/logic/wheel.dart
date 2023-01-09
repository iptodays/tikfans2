/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 10:28:23
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-10 10:41:36
 * @FilePath: /tikfans2/lib/logic/wheel.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class WheelLogic extends IGetxController {
  final CoinsLogic logic = Get.find<CoinsLogic>();

  final StreamController<int> controller = StreamController<int>();

  int _coins = 0;

  /// 开始转盘
  Future<void> start() async {
    if (EasyLoading.isShow) return;
    if (AppConfig.instance.setting.coinTurntable!.price >
        AppConfig.instance.setting.device.coins) {
      EasyLoading.showToast(translate.toast.coinsNotEnough);
      return;
    }
    EasyLoading.show();
    Response response = await Api().request('/Device.coinTurntable');
    if (response.isOk) {
      EasyLoading.dismiss();
      logic.updateCoins(
        logic.coins.value - AppConfig.instance.setting.coinTurntable!.price,
      );
      _coins = response.result['coins'];
      controller.sink.add(
        AppConfig.instance.setting.coinTurntable!.rewards
            .indexOf(response.result['reward']),
      );
    } else {
      EasyLoading.showToast(response.message);
    }
  }

  /// 动画结束更新金币
  Future<void> onAnimationEnd() async {
    logic.updateCoins(_coins);
  }

  @override
  void onClose() {
    controller.close();
    super.onClose();
  }
}
