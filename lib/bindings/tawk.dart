/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-12-11 21:28:17
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-11 21:28:34
 * @FilePath: /tikfans2/lib/bindings/tawk.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:tikfans2/logic/tawk.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class TawkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TawkController());
  }
}
