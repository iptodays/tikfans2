/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-01-06 13:54:10
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 14:53:36
 * @FilePath: /tikfans2/lib/logic/rate_us.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RateUsLogic extends IGetxController {
  final CoinsLogic coinsLogic;

  RateUsLogic(this.coinsLogic);

  final RxBool enabled = false.obs;

  @override
  void onInit() {
    enabled.trigger(AppConfig.instance.setting.rateUs != null &&
        AppConfig.instance.setting.rateUs!.coins > 0);
    super.onInit();
  }

  Future<void> onRateUs() async {
    launchUrlString(
      'https://play.google.com/store/apps/details?id=${AppConfig.instance.package.packageName}',
      mode: LaunchMode.externalApplication,
    );
    if (enabled.isTrue) {
      EasyLoading.show();
      Response response = await Api().request('/Device.rateUs');
      if (response.isOk) {
        EasyLoading.dismiss();
        coinsLogic.updateCoins(response.result);
        AppConfig.instance.setting.rateUs = null;
        enabled.trigger(false);
      } else {
        EasyLoading.showToast(response.message);
      }
    }
  }
}
