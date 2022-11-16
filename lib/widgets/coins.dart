/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-03 18:37:44
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-07 22:33:43
 * @FilePath: /tikfans/lib/widgets/coins.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/utils/routes/routes.dart';
import 'package:tikfans2/widgets/button.dart';

class CoinsButton extends StatelessWidget {
  CoinsButton({super.key});

  final CoinsLogic logic = Get.put(CoinsLogic());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(right: 16),
      child: IButton(
        onTap: () => Get.toNamed(AppRoutes.coinLog),
        child: Container(
          height: 28,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(
            top: 2,
            bottom: 2,
            right: 8,
            left: 2,
          ),
          decoration: BoxDecoration(
            color: HexColor('#272D45'),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Image.asset(
                  'assets/img/universal/coins.png',
                  width: 24,
                ),
              ),
              Obx(() {
                return Text(
                  logic.coins.string,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
