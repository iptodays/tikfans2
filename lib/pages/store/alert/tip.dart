/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-24 15:25:19
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 16:17:38
 * @FilePath: /tikfans2/lib/pages/store/alert/tip.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class DifferentTipAlert extends StatelessWidget {
  const DifferentTipAlert({
    super.key,
    required this.type,
  });

  final String type;

  String get title => type == 'follow'
      ? translate.store.tip.follow.title
      : translate.store.tip.like.title;
  List<String> get values => type == 'follow'
      ? translate.store.tip.follow.values
      : translate.store.tip.like.values;

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.all(40),
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: HexColor('#1C2136'),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              titleBuilder(),
              explanationBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleBuilder() {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 36,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IButton(
            onTap: () async {
              AppConfig.instance.box.write('store.$type', true);
              Get.back();
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.close_rounded,
                color: HexColor('#50587A'),
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget explanationBuilder() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: values.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 1.8,
          ),
          itemBuilder: (_, index) {
            return Container(
              color: (index + 1) % 3 == 0
                  ? HexColor('#FFDB57').withOpacity(0.2)
                  : HexColor('#262C44'),
              alignment: Alignment.center,
              child: AutoSizeText(
                values[index],
                maxLines: 2,
                minFontSize: 10,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color:
                      Colors.white.withOpacity((index + 1) % 3 == 0 ? 1 : 0.5),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
