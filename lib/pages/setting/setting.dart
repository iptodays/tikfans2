/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:34:45
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-11-06 15:00:48
 * @FilePath: /tikfans/lib/pages/setting/setting.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:tikfans2/pages/setting/widgets/apps.dart';
import 'package:tikfans2/pages/setting/widgets/configure.dart';
import 'package:tikfans2/pages/setting/widgets/fixed.dart';
import 'package:tikfans2/pages/setting/widgets/welfare.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/widgets/coins.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(
        title: Text(Translations.of(context).setting.title),
        actions: [
          CoinsButton(),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SWelfareView(),
            // SliverPadding(
            //   padding: EdgeInsets.symmetric(vertical: 20),
            //   sliver: SliverToBoxAdapter(
            //     child: SItemView(
            //       height: 56,
            //       k: AppRoutes.account,
            //     ),
            //   ),
            // ),
            SFixedView(),
            SConfigureView(),
            AppsView(),
          ],
        ),
      ),
    );
  }
}

class ClassName {}
