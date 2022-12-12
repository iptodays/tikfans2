/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-12-11 21:27:54
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-12 16:33:48
 * @FilePath: /tikfans2/lib/bindings/binding.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:tikfans2/logic/billing_client.dart';
import 'package:tikfans2/logic/tabbar.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BillingClientLogic());
    Get.lazyPut(() => TabBarController());
  }
}
