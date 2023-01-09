/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 14:08:07
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-30 19:26:09
 * @FilePath: /tikfans2/lib/pages/language/language.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/language.dart';
import 'package:tikfans2/models/strings.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class LanguagePage extends StatelessWidget {
  LanguagePage({super.key});

  final LanguageLogic logic = Get.put(LanguageLogic());

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(
        title: Text(Translations.of(context).language.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  itemCount: logic.list.length,
                  itemBuilder: (_, index) => itemBuilder(index),
                );
              },
            ),
          ),
          startBuilder(),
        ],
      ),
    );
  }

  Widget itemBuilder(int index) {
    StringsModel model = logic.list[index];
    return IButton(
      onTap: () {
        logic.updateLocale(model.locale);
      },
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Text(
                model.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Obx(() {
              if (logic.locale.value != model.locale) return const SizedBox();
              return Image.asset(
                'assets/img/universal/checked.png',
                width: 13,
              );
            })
          ],
        ),
      ),
    );
  }

  Widget startBuilder() {
    if (AppConfig.instance.box.hasData('x-app-lang')) {
      return const SizedBox();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 60,
      ),
      child: IButton(
        onTap: logic.start,
        child: Container(
          height: 44,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: HexColor('#4135FF'),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            translate.language.start,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
