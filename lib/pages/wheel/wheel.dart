/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 10:27:24
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-29 21:13:47
 * @FilePath: /tikfans/lib/pages/wheel/wheel.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/wheel.dart';
import 'package:tikfans2/pages/wheel/widgets/triangle_indicator.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/coins.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class WheelPage extends StatelessWidget {
  WheelPage({super.key});

  final WheelLogic logic = Get.put(WheelLogic());

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(
        title: Text(translate.wheel.title),
        actions: [
          CoinsButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            coinsBuilder(),
            Expanded(
                child: SingleChildScrollView(
              child: rulesBuilder(),
            ))
          ],
        ),
      ),
    );
  }

  Widget coinsBuilder() {
    List<FortuneItem> items = [];
    for (var i = 0;
        i < AppConfig.instance.setting.coinTurntable!.rewards.length;
        i++) {
      items.add(
        FortuneItem(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: i % 2 == 0 ? HexColor('#4F80B6') : HexColor('#70B4E2'),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 6,
                    left: 50,
                  ),
                  child: Text(
                    '${AppConfig.instance.setting.coinTurntable!.rewards[i]}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/img/universal/coins.png',
                  width: 32,
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      );
    }
    return AspectRatio(
      aspectRatio: 1,
      child: ClipOval(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    HexColor('#A7DEFF'),
                    HexColor('#628FE7'),
                  ],
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  FortuneWheel(
                    animateFirst: false,
                    indicators: const [
                      FortuneIndicator(
                        alignment: Alignment.topCenter,
                        child: ITriangleIndicator(),
                      ),
                    ],
                    selected: logic.controller.stream,
                    items: items,
                    onAnimationEnd: logic.onAnimationEnd,
                  ),
                  startBuilder(),
                ],
              ),
            ),
            Container(
              height: 4,
              width: 43,
              color: HexColor('#FBAB12'),
            ),
          ],
        ),
      ),
    );
  }

  Widget startBuilder() {
    return IButton(
      onTap: logic.start,
      child: Container(
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: HexColor('#4967AC'),
              blurRadius: 16,
            )
          ],
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              HexColor('#A7DEFF'),
              HexColor('#628FE7'),
            ],
          ),
        ),
        child: ClipOval(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  HexColor('#76D0FE'),
                  HexColor('#5D7CE1'),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/wheel/go.svg',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 8,
                    right: 8,
                  ),
                  child: AutoSizeText(
                    '${AppConfig.instance.setting.coinTurntable!.price} ${translate.universal.coins}',
                    textAlign: TextAlign.center,
                    minFontSize: 10,
                    maxLines: 2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget rulesBuilder() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StyledText(
            text: '<svg></svg>${translate.wheel.rules.title}<svg></svg>',
            tags: {
              'svg': StyledTextWidgetTag(
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: 22,
                    height: 2,
                    color: HexColor('#4135FF'),
                  ),
                ),
              ),
            },
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: translate.wheel.rules.values.length,
            itemBuilder: (_, index) {
              var value = translate.wheel.rules.values[index];
              return Text(
                value is String
                    ? value
                    : value(
                        value: AppConfig.instance.setting.coinTurntable!.price,
                      ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.5),
                  height: 1.5,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
