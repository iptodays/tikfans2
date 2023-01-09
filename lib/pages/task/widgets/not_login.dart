/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-29 22:38:25
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-17 21:20:57
 * @FilePath: /tikfans2/lib/pages/task/widgets/not_login.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/pages/login/login.dart';
import 'package:tikfans2/pages/task/widgets/tip.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';

class NotLoginView extends StatelessWidget {
  NotLoginView({super.key});

  final SocialLogic logic = Get.find<SocialLogic>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          windowBuilder(),
          TaskTipView(
            type: 'follow',
          ),
        ],
      ),
    );
  }

  Widget windowBuilder() {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#1C2136'),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.fromLTRB(20, 32, 20, 20),
        child: Column(
          children: [
            SizedBox(
              height: Get.width - 168,
              child: ClipOval(
                child: Image.asset(
                  'assets/img/task/task.png',
                ),
              ),
            ),
            const Spacer(),
            workspaceBuilder(),
          ],
        ),
      ),
    );
  }

  Widget workspaceBuilder() {
    return SizedBox(
      height: 44,
      child: Row(
        children: [
          Opacity(
            opacity: 0.2,
            child: Container(
              width: 110,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: HexColor('#262C44'),
              ),
              child: AutoSizeText(
                translate.task.skip,
                minFontSize: 10,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: IButton(
              onTap: () {
                Get.dialog(
                  LoginPage(),
                  useSafeArea: false,
                  barrierDismissible: false,
                  arguments: {'model': logic.platform.value},
                );
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: HexColor('#4135FF'),
                ),
                child: StyledText(
                  text:
                      '${Translations.of(Get.context!).task.follow} +10<coins></coins>',
                  tags: {
                    'coins': StyledTextWidgetTag(
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Image.asset(
                          'assets/img/universal/coins.png',
                          width: 20,
                        ),
                      ),
                    ),
                  },
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
