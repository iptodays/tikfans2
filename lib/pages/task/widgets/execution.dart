/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2023-01-06 20:33:36
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 20:34:23
 * @FilePath: /tikfans2/lib/pages/task/widgets/execution.dart
 * 
 * Copyright (c) 2023 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/task.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';

class ExecutionWidget extends StatelessWidget {
  final TaskLogic logic = Get.find<TaskLogic>();

  ExecutionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IButton(
      onTap: logic.execution,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: HexColor('#4135FF'),
        ),
        child: Obx(() {
          if (logic.model.value == null) {
            return const SizedBox();
          }
          return StyledText(
            text:
                '${Translations.of(context)['task.${logic.model.value!.type}']} +${logic.model.value!.reward}<coins></coins>',
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
          );
        }),
      ),
    );
  }
}
