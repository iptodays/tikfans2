/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 10:12:05
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-06 10:02:41
 * @FilePath: /tikfans/lib/pages/setting/widgets/welfare.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:tikfans2/logic/setting.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/utils/routes/routes.dart';
import 'package:tikfans2/widgets/button.dart';

class SWelfareView extends StatelessWidget {
  const SWelfareView({super.key});

  @override
  Widget build(BuildContext context) {
    if (AppConfig.instance.setting.dailyCheckIn == null &&
        AppConfig.instance.setting.coinTurntable == null) {
      return const SliverToBoxAdapter();
    }
    return SliverPadding(
      padding: const EdgeInsets.only(top: 16),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            AppConfig.instance.setting.dailyCheckIn == null
                ? const SizedBox()
                : Expanded(
                    child: _DailyView(),
                  ),
            Visibility(
              visible: AppConfig.instance.setting.dailyCheckIn != null &&
                  AppConfig.instance.setting.coinTurntable != null,
              child: const SizedBox(width: 20),
            ),
            AppConfig.instance.setting.coinTurntable == null
                ? const SizedBox()
                : Expanded(
                    child: IButton(
                      onTap: () => Get.toNamed(AppRoutes.wheel),
                      child: Container(
                        height: 62,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: HexColor('#1C2136'),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/img/setting/wheel.png',
                              width: 32,
                              height: 32,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: AutoSizeText(
                                  Translations.of(context).setting.wheel,
                                  maxLines: 2,
                                  minFontSize: 10,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class _DailyView extends StatelessWidget {
  final SettingLogic logic = Get.find<SettingLogic>();

  @override
  Widget build(BuildContext context) {
    return IButton(
      onTap: () => Get.toNamed(AppRoutes.daily),
      child: Container(
        height: 62,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: HexColor('#1C2136'),
        ),
        child: Obx(
          () {
            Widget text = AutoSizeText(
              Translations.of(context).setting.daily,
              maxLines: 1,
              minFontSize: 10,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            );
            return Opacity(
              opacity: logic.hasCheckedIn.isTrue ? 0.5 : 1,
              child: Row(
                children: [
                  Image.asset(
                    'assets/img/setting/daily.png',
                    width: 32,
                    height: 32,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: logic.hasCheckedIn.isFalse
                          ? text
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text,
                                SlideCountdown(
                                  slideDirection: SlideDirection.none,
                                  padding: const EdgeInsets.only(top: 4),
                                  decoration: const BoxDecoration(),
                                  duration: Duration(
                                    milliseconds: AppConfig
                                            .instance
                                            .checkInTime!
                                            .millisecondsSinceEpoch -
                                        DateUtil.getNowDateMs(),
                                  ),
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  onDone: logic.resetCheckIn,
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
