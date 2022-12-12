/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-12-12 16:34:04
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-12 16:34:17
 * @FilePath: /tikfans2/lib/bindings/splash.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:tikfans2/logic/splash.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
