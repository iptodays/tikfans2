/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-03 18:41:57
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-07 19:56:28
 * @FilePath: /tikfans2/lib/logic/coins.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class CoinsLogic extends IGetxController {
  /// 金币数
  final RxInt coins = 0.obs;

  @override
  void onInit() {
    if (coins.value != AppConfig.instance.setting.device.coins) {
      coins.trigger(AppConfig.instance.setting.device.coins);
    }
    super.onInit();
  }

  /// 更新金币数
  void updateCoins(int val) {
    if (coins.value < val) {
      EasyLoading.showToast(translate.toast.received);
    }
    coins.trigger(val);
    AppConfig.instance.setting.device.coins = val;
  }

  // /// 完成任务
  // Future<void> _poolFinished() async {
  //   EasyLoading.show();
  //   Response response = await Api().request(
  //     '/Pool.success',
  //     data: {
  //       'poolId': '${_taskLogic.model.value!.id}',
  //       'username': _taskLogic.socialLogic.user.value!.username,
  //       'platform': _taskLogic.socialLogic.platform.value.platform,
  //     },
  //   );
  //   EasyLoading.dismiss();
  //   if (response.isOk) {
  //     updateCoins(response.result);
  //   } else {
  //     EasyLoading.showToast(response.message);
  //   }
  //   _taskLogic.nextTask();
  // }

  // @override
  // void onDetached() {}

  // @override
  // void onInactive() {}

  // @override
  // void onPaused() {}

  // @override
  // void onResumed() {
  //   if (_coinTaskLogic.runing) {
  //     _coinTaskFinished();
  //   } else if (_taskLogic.runing) {
  //     _poolFinished();
  //   }
  // }
}
