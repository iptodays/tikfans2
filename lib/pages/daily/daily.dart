/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 10:25:19
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 14:58:33
 * @FilePath: /tikfans2/lib/pages/daily/daily.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/daily.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/coins.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class DailyPage extends StatelessWidget {
  DailyPage({super.key});

  final DailyLogic logic = Get.find<DailyLogic>();

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(
        title: Text(translate.daily.title),
        actions: [
          CoinsButton(),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        children: [
          grilleBuilder(),
          checkInBuilder(),
          rulesBuilder(),
        ],
      ),
    );
  }

  Widget grilleBuilder() {
    List<Widget> list = [];
    for (var i = 0;
        i < AppConfig.instance.setting.dailyCheckIn!.rewards.length;
        i++) {
      list.add(Container(
        height: 78,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: HexColor('#262C44'),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: HexColor('#343C5B'),
            width: 1,
          ),
        ),
        child: Obx(
          () {
            bool checked = logic.checkedInDays.value >= i + 1;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'DAY ${i + 1}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 28,
                  height: 28,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: checked ? 0.2 : 1,
                        child: Image.asset('assets/img/universal/coins.png'),
                      ),
                      Visibility(
                        visible: checked,
                        child: Icon(
                          Icons.check_rounded,
                          color: HexColor('#81F0B8'),
                        ),
                      )
                    ],
                  ),
                ),
                AutoSizeText(
                  '${AppConfig.instance.setting.dailyCheckIn!.rewards[i]}',
                  maxLines: 1,
                  minFontSize: 10,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(
                      checked ? 0.2 : 1,
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            );
          },
        ),
      ));
    }
    return StaggeredGrid.count(
      crossAxisCount: 5,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: list,
    );
  }

  Widget checkInBuilder() {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: IButton(
        onTap: logic.checkIn,
        child: Obx(() {
          return Opacity(
            opacity: logic.enabled.isFalse ? 0.4 : 1,
            child: Container(
              height: 44,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: HexColor('#4135FF'),
              ),
              child: Builder(
                builder: (_) {
                  if (logic.enabled.isFalse) {
                    return SlideCountdown(
                      slideDirection: SlideDirection.none,
                      decoration: const BoxDecoration(),
                      duration: Duration(
                        milliseconds:
                            AppConfig.instance.box.read('dailyCheckIn') -
                                DateUtil.getNowDateMs(),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    );
                  }
                  return AutoSizeText(
                    translate.daily.checkIn,
                    maxLines: 2,
                    minFontSize: 10,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget rulesBuilder() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StyledText(
          text: '<svg></svg>${translate.daily.rules.title}<svg></svg>',
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            translate.daily.rules.values.join('\n'),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.5),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
