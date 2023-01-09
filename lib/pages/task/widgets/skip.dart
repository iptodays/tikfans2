/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-01-06 20:35:14
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 20:37:12
 * @FilePath: /tikfans2/lib/pages/task/widgets/skip.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/task.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';

class SkipWidget extends StatelessWidget {
  final TaskLogic logic = Get.find<TaskLogic>();

  SkipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IButton(
      onTap: logic.nextTask,
      child: Container(
        width: 110,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: HexColor('#262C44'),
        ),
        child: AutoSizeText(
          Translations.of(context).task.skip,
          minFontSize: 10,
          maxLines: 1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
