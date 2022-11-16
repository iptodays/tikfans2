/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:12:24
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-10 10:40:35
 * @FilePath: /tikfans/lib/utils/getx/getx.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:get/get.dart';

export 'package:get/get.dart' hide Response, Translations;

class IGetxController extends GetxController {
  /// 正在加载
  RxBool loading = true.obs;
}
