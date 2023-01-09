/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:35:23
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-09 14:18:20
 * @FilePath: /tikfans2/lib/logic/splash.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/foundation.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/utils/routes/routes.dart';
import 'package:tikfans2/widgets/general.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class SplashLogic extends IGetxController {
  @override
  void onReady() async {
    await AppConfig.instance.registerPlugin();
    await AppConfig.instance.getSettings();
    await UnityAds.init(
      gameId: '5022687',
      testMode: kDebugMode,
    );
    for (var element in PrivacyConsentType.values) {
      await UnityAds.setPrivacyConsent(element, true);
    }
    _goToMain();
    super.onReady();
  }

  Future<void> _goToMain() async {
    if (AppConfig.instance.setting.globalTip != null) {
      await Get.dialog(
        GeneralAlert(
          model: AppConfig.instance.setting.globalTip!,
        ),
        useSafeArea: false,
        barrierDismissible: false,
      );
    }
    if (!AppConfig.instance.box.hasData('x-app-lang')) {
      Get.offAndToNamed(AppRoutes.language);
    } else {
      Get.offAndToNamed(AppRoutes.tabbar);
    }
  }
}
