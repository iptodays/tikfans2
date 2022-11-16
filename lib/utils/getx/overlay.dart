/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-10-09 09:45:03
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-10 10:53:47
 * @FilePath: /tikfans/lib/utils/getx/overlay.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:flutter/material.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class IGetOverlay {
  IGetOverlay._();

  static Future<dynamic> bottomSheet<S>(
    Widget bottomSheet, {
    bool deleteDependency = false,
  }) async {
    dynamic result = await Get.bottomSheet(
      bottomSheet,
    );
    if (deleteDependency) {
      Get.delete<S>();
    }
    return result;
  }

  static Future<dynamic> dialog<S>(
    Widget widget, {
    bool deleteDependency = false,
    Object? arguments,
  }) async {
    dynamic result = await Get.dialog(
      widget,
      arguments: arguments,
      useSafeArea: false,
      barrierDismissible: false,
    );
    if (deleteDependency) {
      Get.delete<S>();
    }
    return result;
  }
}
