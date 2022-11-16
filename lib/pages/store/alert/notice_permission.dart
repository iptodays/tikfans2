/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-20 17:40:29
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-20 18:09:53
 * @FilePath: /tikfans/lib/pages/store/alert/notice_permission.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:app_settings/app_settings.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class NoticePermissionAlert extends StatelessWidget {
  const NoticePermissionAlert({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: HexColor('#1C2136'),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 24,
                ),
                child: Text(
                  translate.store.notice.message(value: count),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    cancelBuilder(),
                    const SizedBox(width: 16),
                    turnOnBuilder(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cancelBuilder() {
    return Expanded(
      child: IButton(
        onTap: () => Get.back(),
        child: Container(
          height: 44,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: HexColor('#4135FF'), width: 1),
          ),
          child: AutoSizeText(
            translate.alert.cancel,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: HexColor('#4135FF'),
            ),
          ),
        ),
      ),
    );
  }

  Widget turnOnBuilder() {
    return Expanded(
      child: IButton(
        onTap: () {
          AppSettings.openNotificationSettings();
          Get.back();
        },
        child: Container(
          height: 44,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: HexColor('#4135FF'),
          ),
          child: AutoSizeText(
            translate.store.notice.turnOn,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
