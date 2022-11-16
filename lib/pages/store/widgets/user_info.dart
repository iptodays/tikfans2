/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-06 14:58:01
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-01 22:03:01
 * @FilePath: /tikfans/lib/pages/store/widgets/user_info.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/pages/login/login.dart';
import 'package:tikfans2/pages/store/alert/user.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/image.dart';

class StoreUserInfoView extends StatelessWidget {
  StoreUserInfoView({super.key});
  final SocialLogic logic = Get.find<SocialLogic>();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              if (logic.user.value == null) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 12),
                      child: Image.asset(
                        'assets/img/store/avatar.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                    Text(
                      'Guest',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    addBuilder(),
                  ],
                );
              }
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 12),
                    child: ClipOval(
                      child: IImage(
                        logic.user.value!.avatar,
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        logic.user.value!.fullname,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  switchBuilder(),
                ],
              );
            }),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 20, 16, 10),
              color: HexColor('#1C2136'),
              height: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget addBuilder() {
    return IButton(
      onTap: () {
        Get.dialog(
          LoginPage(),
          useSafeArea: false,
          barrierDismissible: false,
          arguments: {'model': logic.platform.value},
        );
      },
      child: Container(
        height: 32,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          border: Border.all(
            color: HexColor('#4135FF'),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          Translations.of(Get.context!).universal.add,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: HexColor('#4135FF'),
          ),
        ),
      ),
    );
  }

  Widget switchBuilder() {
    return IButton(
      onTap: () {
        Get.dialog(
          UserAlert(),
          useSafeArea: false,
          barrierDismissible: false,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: SvgPicture.asset(
          'assets/svg/store/switch.svg',
        ),
      ),
    );
  }

  String number() {
    int x = logic.user.value!.followerCount;
    if (x < 10000) {
      return '$x';
    }
    return '${(x / 10000).toStringAsFixed(2)}w';
  }
}
