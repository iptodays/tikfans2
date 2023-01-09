/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 14:43:25
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 14:53:44
 * @FilePath: /tikfans2/lib/pages/setting/widgets/configure.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:share_plus/share_plus.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/rate_us.dart';
import 'package:tikfans2/pages/setting/widgets/item.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/utils/routes/routes.dart';
import 'package:tikfans2/widgets/button.dart';

class SConfigureView extends StatelessWidget {
  const SConfigureView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 16,
      ),
      sliver: AppConfig.instance.setting.rateUs == null
          ? const SliverToBoxAdapter(
              child: SItemView(k: AppRoutes.about),
            )
          : SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SItemView(
                    k: AppRoutes.about,
                    bottom: false,
                  ),
                  SItemView(
                    k: 'share.title',
                    bottom: false,
                    onTap: () async {
                      EasyLoading.show();
                      String text = '';
                      if (AppConfig.instance.setting.inviteFriends != null) {
                        text += translate.setting.share.message(
                          value:
                              AppConfig.instance.setting.inviteFriends!.coins,
                        );
                        text += '\n\n';
                      }
                      text +=
                          'https://play.google.com/store/apps/details?id=${AppConfig.instance.package.packageName}&referrer=utm_source%3D${AppConfig.instance.package.packageName}%26invitingCode%3D${AppConfig.instance.setting.device.invitingCode}';
                      await Clipboard.setData(ClipboardData(text: text));
                      await Share.share(text);
                      EasyLoading.dismiss();
                    },
                  ),
                  _RateUs(),
                ],
              ),
            ),
    );
  }
}

class _RateUs extends StatelessWidget {
  final RateUsLogic logic = Get.find<RateUsLogic>();

  @override
  Widget build(BuildContext context) {
    return IButton(
      onTap: logic.onRateUs,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: HexColor('#1C2136'),
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: StyledText(
                  text:
                      '${Translations.of(Get.context!).setting.rateUs}<svg></svg>',
                  tags: {
                    'svg': StyledTextWidgetTag(
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SvgPicture.asset(
                          'assets/svg/setting/star5.svg',
                        ),
                      ),
                    )
                  },
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Obx(
              () {
                if (logic.enabled.isFalse) {
                  return const SizedBox();
                }
                return StyledText(
                  text:
                      '+${AppConfig.instance.setting.rateUs!.coins}<img></img>',
                  tags: {
                    'img': StyledTextWidgetTag(
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Image.asset(
                          'assets/img/universal/coins.png',
                          width: 20,
                        ),
                      ),
                    ),
                  },
                  style: TextStyle(
                    color: HexColor('#FDD260'),
                    fontSize: 14,
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
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
