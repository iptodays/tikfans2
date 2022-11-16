/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-17 09:47:22
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-29 23:00:54
 * @FilePath: /tikfans/lib/pages/task/widgets/tip.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/logic/task.dart';
import 'package:tikfans2/logic/task_tip.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';

class TaskTipView extends StatelessWidget {
  TaskTipView({
    super.key,
    this.type,
  });

  final TaskTipLogic logic = Get.put(TaskTipLogic());
  final TaskLogic taskLogic = Get.find<TaskLogic>();
  final SocialLogic socialLogic = Get.find<SocialLogic>();

  final String? type;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (logic.hiden.isTrue ||
          (type == null && taskLogic.model.value == null)) {
        return const SizedBox();
      }

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          decoration: BoxDecoration(
            color: HexColor('#1C2136'),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              titleBuilder(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Obx(() {
                  String type = Translations.of(context)[
                      'task.${this.type ?? taskLogic.model.value!.type}'];
                  List<String> list = [
                    type,
                    socialLogic.platform.value.name,
                    type,
                    AppConfig.instance.package.appName,
                    '',
                  ];
                  List<Widget> children = [];
                  for (var i = 0;
                      i < Translations.of(context).task.tip.values.length;
                      i++) {
                    var val = Translations.of(context).task.tip.values[i];
                    children.add(Text(
                      val is String
                          ? val
                          : val(
                              value: list[i],
                            ),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.5),
                        fontStyle: FontStyle.italic,
                      ),
                    ));
                  }
                  return Wrap(
                    spacing: 16,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: children,
                  );
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  Translations.of(context).task.tip.message,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: HexColor('#F05356'),
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget titleBuilder() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          translate.task.tip.title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IButton(
            onTap: logic.closeTip,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.close_rounded,
                color: HexColor('#50587A'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
