/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 13:44:04
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-04 21:42:49
 * @FilePath: /tikfans2/lib/pages/setting/widgets/item.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';

class SItemView extends StatelessWidget {
  const SItemView({
    super.key,
    required this.k,
    this.onTap,
    this.height = 52,
    this.top = true,
    this.bottom = true,
  });

  final String k;

  final double height;

  final VoidCallback? onTap;

  final bool top, bottom;

  @override
  Widget build(BuildContext context) {
    return IButton(
      onTap: () {
        if (onTap != null) {
          onTap!();
        } else {
          Get.toNamed(k);
        }
      },
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: HexColor('#1C2136'),
          borderRadius: BorderRadius.vertical(
            top: top ? const Radius.circular(12) : Radius.zero,
            bottom: bottom ? const Radius.circular(12) : Radius.zero,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AutoSizeText(
                  Translations.of(context)['setting.${k.replaceAll('/', '')}'],
                  maxLines: 2,
                  minFontSize: 10,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.white.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
