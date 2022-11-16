/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-12 09:14:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-13 19:21:39
 * @FilePath: /tikfans/lib/widgets/general.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/models/global_tip.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/scaffold.dart';
import 'package:url_launcher/url_launcher_string.dart';

class GeneralAlert extends StatelessWidget {
  const GeneralAlert({
    super.key,
    this.onTap,
    required this.model,
  });

  final VoidCallback? onTap;

  final GlobalTipModel model;

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
          decoration: BoxDecoration(
            color: HexColor('#1C2136'),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              titleBuilder(),
              messageBuilder(),
              workspaceBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleBuilder() {
    return Text(
      model.title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }

  Widget messageBuilder() {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 24),
      constraints: const BoxConstraints(
        maxHeight: 160,
      ),
      child: SingleChildScrollView(
        child: Text(
          model.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ),
    );
  }

  Widget workspaceBuilder() {
    Widget confirm = IButton(
      onTap: () {
        if (model.url == null) {
          if (onTap != null) {
            onTap!();
          }
          Get.back();
        } else {
          launchUrlString(
            model.url!,
            mode: LaunchMode.externalApplication,
          );
          if (!model.force) {
            Get.back();
          }
        }
      },
      child: Container(
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: HexColor('#4135FF'),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          model.force ? translate.alert.ok : translate.alert.confirm,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
    if (model.force) {
      return confirm;
    }
    return Row(
      children: [
        Expanded(
          child: IButton(
            onTap: () => Get.back(),
            child: Container(
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                  color: HexColor('#4135FF'),
                  width: 1,
                ),
              ),
              child: Text(
                translate.alert.cancel,
                style: TextStyle(
                  fontSize: 16,
                  color: HexColor('#4135FF'),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: confirm,
        ),
      ],
    );
  }
}
