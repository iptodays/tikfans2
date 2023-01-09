/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-19 22:33:05
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 15:52:33
 * @FilePath: /tikfans2/lib/widgets/ad_floating_ball.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/ad_task.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';

class ADFloatingBallView extends StatelessWidget {
  ADFloatingBallView({super.key});

  final ADTaskLogic logic = Get.find<ADTaskLogic>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (logic.model.value == null) return const SizedBox();
      return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: kToolbarHeight),
          child: Container(
            width: 122,
            height: 122,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/img/ad/light.png'),
              ),
            ),
            child: IButton(
              onTap: logic.watchAd,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/img/ad/pie.png'),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#FE6252').withOpacity(0.4),
                            blurRadius: 24,
                          )
                        ]),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 38, bottom: 6),
                        child: Image.asset(
                          'assets/img/ad/video.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      coinBuilder(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget coinBuilder() {
    return Obx(() {
      if (logic.model.value == null) return const SizedBox();
      return Container(
        width: 54,
        height: 24,
        padding: const EdgeInsets.symmetric(vertical: 1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              HexColor('#FED34D'),
              HexColor('#F1B33E'),
            ],
          ),
        ),
        child: Container(
          width: 54,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                HexColor('#FAA307'),
                HexColor('#FFDB57'),
              ],
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: AutoSizeText(
                    '+ ${logic.model.value!.coins}',
                    minFontSize: 10,
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/img/universal/coins.png',
                width: 24,
              ),
            ],
          ),
        ),
      );
    });
  }
}
