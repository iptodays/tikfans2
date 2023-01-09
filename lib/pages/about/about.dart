/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 14:11:07
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-30 14:39:40
 * @FilePath: /tikfans2/lib/pages/about/about.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/utils/routes/routes.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/scaffold.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(
        title: Text(translate.about.title),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        children: [
          itemBuilder(
            key: 'contact',
            onTap: () => Get.toNamed(AppRoutes.contact),
          ),
          // itemBuilder(
          //   key: 'service',
          //   onTap: () {},
          // ),
          itemBuilder(
            key: 'policy',
            onTap: () => launchUrlString(
              'https://tikfans-app.com/privacy-policy.html',
              mode: LaunchMode.externalApplication,
            ),
          ),
        ],
      ),
    );
  }

  Widget itemBuilder({
    required String key,
    required VoidCallback onTap,
  }) {
    return IButton(
      onTap: onTap,
      child: SizedBox(
        height: 48,
        child: Row(
          children: [
            Expanded(
              child: AutoSizeText(
                translate['about.$key'],
                maxLines: 1,
                minFontSize: 10,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Colors.white.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
