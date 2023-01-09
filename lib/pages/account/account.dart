/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 14:07:31
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-17 19:21:34
 * @FilePath: /tikfans2/lib/pages/account/account.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/platform.dart';
import 'package:tikfans2/pages/account/widgets/header.dart';
import 'package:tikfans2/pages/account/widgets/users.dart';
import 'package:tikfans2/pages/login/login.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  final SocialLogic logic = Get.find<SocialLogic>();

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(
        title: Text(
          translate.account.title,
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 180,
        ),
        itemBuilder: (_, index) => itemBuilder(index),
        separatorBuilder: (_, index) => const SizedBox(height: 40),
        itemCount: AppConfig.instance.setting.platforms.length,
      ),
    );
  }

  Widget itemBuilder(int index) {
    PlatformModel model = AppConfig.instance.setting.platforms[index];
    return Column(
      children: [
        PlatformHeaderView(
          logo: model.logo,
          name: model.name,
          onTap: () {
            Get.dialog(
              LoginPage(),
              useSafeArea: false,
              barrierDismissible: false,
              arguments: {'model': model},
            );
          },
        ),
        UsersView(
          platform: model.platform,
        ),
      ],
    );
  }
}
