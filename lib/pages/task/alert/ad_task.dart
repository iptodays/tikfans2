/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-25 11:18:58
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-25 18:11:40
 * @FilePath: /tikfans/lib/pages/task/alert/ad_task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class ADTaskAlert extends StatelessWidget {
  ADTaskAlert({
    super.key,
  });

  final CoinsLogic logic = Get.find<CoinsLogic>();

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.all(40),
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: HexColor('#1C2136'),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleBuilder(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Image.asset(
                  'assets/img/task/task_ad.png',
                  width: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  20,
                  0,
                  20,
                  24,
                ),
                child: IButton(
                  onTap: logic.watchAd,
                  child: Container(
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: HexColor('#4135FF'),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: StyledText(
                      text:
                          '${translate.store.ad.watch} +${AppConfig.instance.setting.earnCoins!.watchAdReward}<svg></svg>',
                      tags: {
                        'svg': StyledTextWidgetTag(
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Image.asset(
                              'assets/img/universal/coins.png',
                              width: 20,
                            ),
                          ),
                        ),
                      },
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget titleBuilder() {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 24),
          child: Text(
            translate.store.ad.title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        IButton(
          onTap: () => Get.back(),
          child: Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.all(16),
            child: Icon(
              Icons.close_rounded,
              size: 18,
              color: HexColor('#50587A'),
            ),
          ),
        ),
      ],
    );
  }
}
