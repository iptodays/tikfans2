/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-09 14:07:22
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-18 23:15:07
 * @FilePath: /tikfans2/lib/pages/login/login.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/platform.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final SocialLogic logic = Get.find<SocialLogic>();

  /// 登录平台
  PlatformModel get model => Get.arguments['model'];

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      backgroundColor: Colors.transparent,
      dispose: logic.controller.clear,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: HexColor('#1C2136'),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleBuilder(),
              imageBuilder(),
              Text(
                model.platform == 'youtube'
                    ? translate.login.channel
                    : translate.login.username(value: model.name),
                style: TextStyle(
                  color: HexColor('#4135FF'),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  bottom: 16,
                ),
                child: Text(
                  model.platform == 'youtube'
                      ? translate.login.publicChannel
                      : translate.login.publicUsername,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              textfieldBuilder(),
              submitBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleBuilder() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IButton(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.close_rounded,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Text(
            translate.login.add,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget imageBuilder() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 24,
      ),
      child: Image.asset(
        'assets/img/login/${model.platform}_login.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget textfieldBuilder() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: HexColor('#262C44'),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Offstage(
            offstage: model.platform == 'youtube',
            child: const Padding(
              padding: EdgeInsets.only(right: 4),
              child: Text(
                '@',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextField(
              controller: logic.controller,
              keyboardType: TextInputType.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              onChanged: logic.onChanged,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                border: InputBorder.none,
                isDense: true,
                isCollapsed: true,
                hintText: model.platform == 'youtube'
                    ? translate.login.hintChannel
                    : translate.login.hintUsername,
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget submitBuilder() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: IButton(
        onTap: logic.getUser,
        child: Obx(
          () {
            return AnimatedOpacity(
              opacity: logic.enable.isFalse ? 0.4 : 1,
              duration: const Duration(milliseconds: 250),
              child: Container(
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: HexColor('#4135FF'),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Text(
                  translate.login.confirm,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
