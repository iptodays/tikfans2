/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-15 18:01:38
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-17 09:51:41
 * @FilePath: /tikfans2/lib/pages/task/widgets/user.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/pages/store/alert/user.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/image.dart';

class TaskUserView extends StatelessWidget {
  final SocialLogic logic = Get.find<SocialLogic>();

  TaskUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (logic.user.value == null) {
        return const SizedBox();
      }
      return IButton(
        onTap: () {
          Get.dialog(
            UserAlert(),
            useSafeArea: false,
            barrierDismissible: false,
          );
        },
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: 40,
            height: 36,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: IImage(
                    logic.user.value!.avatar,
                    width: 32,
                    height: 32,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset(
                    'assets/svg/task/user_switch.svg',
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
