/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-07 10:01:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-09 23:00:11
 * @FilePath: /tikfans2/lib/pages/account/widgets/header.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/image.dart';

class PlatformHeaderView extends StatelessWidget {
  const PlatformHeaderView({
    super.key,
    required this.logo,
    required this.name,
    required this.onTap,
  });

  final String logo;

  final String name;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: StyledText(
                  text: '<img></img>$name',
                  tags: {
                    'img': StyledTextWidgetTag(
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: IImage(
                            logo,
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                  },
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              IButton(
                onTap: onTap,
                child: Text(
                  translate.account.add,
                  style: TextStyle(
                    fontSize: 14,
                    color: HexColor('#4135FF'),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 8,
            ),
            child: Container(
              color: HexColor('#1C2136'),
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
