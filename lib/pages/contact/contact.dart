/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-06 14:06:49
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 16:22:27
 * @FilePath: /tikfans2/lib/pages/contact/contact.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:tikfans2/models/contact.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/scaffold.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(
        title: Text(
          translate.onlyTitle.contact,
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        itemCount: AppConfig.instance.setting.contacts.length,
        itemBuilder: (_, index) {
          ContactModel model = AppConfig.instance.setting.contacts[index];
          return itemBuilder(
            name: model.key,
            onTap: () async {
              if (model.key.toLowerCase() == 'email') {
                sendEmail(model.value);
              } else {
                launchUrlString(
                  model.value,
                  mode: LaunchMode.externalApplication,
                );
              }
            },
          );
        },
      ),
    );
  }

  Widget itemBuilder({
    required String name,
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
                name,
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

  Future<void> sendEmail(String value) async {
    String platform;
    if (Platform.isAndroid) {
      platform = AppConfig.instance.android.model;
    } else {
      bool canSendMail = await FlutterMailer.canSendMail();
      if (!canSendMail) {
        return;
      }
      platform =
          '${AppConfig.instance.ios.utsname.machine!}/${AppConfig.instance.ios.systemName}/${AppConfig.instance.ios.systemVersion}';
    }
    String body = '''
${'\n' * 2}
------ Don't delete infos below ------
uid: ${AppConfig.instance.udid}
platform: $platform
version: ${AppConfig.instance.package.version}
''';

    final MailOptions mailOptions = MailOptions(
      body: body,
      subject: '${AppConfig.instance.package.appName} issues',
      recipients: [value],
      isHTML: false,
    );
    await FlutterMailer.send(mailOptions);
  }
}
