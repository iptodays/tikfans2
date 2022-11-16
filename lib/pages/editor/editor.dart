/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-11-06 14:47:44
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-11-06 15:32:30
 * @FilePath: /tikfans/lib/pages/editor/editor.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/editor.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class EditorPage extends StatelessWidget {
  EditorPage({super.key});

  final EditorLogic logic = Get.put(EditorLogic());

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(
        title: Text(translate.setting.editor),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        children: [
          emailBuilder(),
        ],
      ),
    );
  }

  Widget emailBuilder() {
    return IButton(
      onTap: logic.updateUserInfo,
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: HexColor('#1C2136'),
        ),
        child: Obx(() {
          return Row(
            children: [
              const Expanded(
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Visibility(
                visible: logic.email.isNotEmpty,
                child: Text(
                  logic.email.value,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Visibility(
                visible: logic.email.isEmpty,
                child: Image.asset(
                  'assets/img/universal/coins.png',
                  width: 20,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.white.withOpacity(0.5),
              ),
            ],
          );
        }),
      ),
    );
  }
}
