/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-12 20:27:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-10 10:41:03
 * @FilePath: /tikfans/lib/logic/language.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tikfans2/models/strings.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/utils/routes/routes.dart';

class LanguageLogic extends IGetxController {
  RxList<StringsModel> list = <StringsModel>[].obs;

  RxString locale =
      (AppConfig.instance.box.read<String>('x-app-lang') ?? 'en').obs;

  @override
  void onReady() async {
    list.addAll(
        jsonDecode(await rootBundle.loadString('assets/json/strings.json'))
            .map<StringsModel>((v) => StringsModel.fromJson(v))
            .toList());
    super.onReady();
  }

  Future<void> updateLocale(String value) async {
    if (AppConfig.instance.box.hasData('x-app-lang')) {
      await AppConfig.instance.box.write('x-app-lang', value);
    }
    locale.trigger(value);
    LocaleSettings.setLocaleRaw(value);
    Get.updateLocale(Locale(value));
  }

  Future<void> start() async {
    if (!AppConfig.instance.box.hasData('x-app-lang')) {
      await AppConfig.instance.box.write('x-app-lang', list.first.locale);
    }
    Get.offAllNamed(AppRoutes.tabbar);
  }
}
