/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-05 20:23:06
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-28 17:22:40
 * @FilePath: /tikfans/lib/widgets/title.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:popover/popover.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/platform.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/image.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({super.key});

  final SocialLogic logic = Get.find<SocialLogic>();

  @override
  Widget build(BuildContext context) {
    if (AppConfig.instance.setting.platforms.length < 2) {
      return const SizedBox();
    }
    return Obx(() {
      return IButton(
        onTap: () async {
          logic.updateShowPopover();
          await showPopover(
            context: context,
            radius: 12,
            width: 200,
            height: 224,
            arrowDyOffset: 18,
            arrowHeight: 0,
            arrowWidth: 0,
            shadow: [],
            barrierColor: Colors.black.withOpacity(0.6),
            backgroundColor: HexColor('#1C2136'),
            bodyBuilder: (context) {
              return ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: AppConfig.instance.setting.platforms.length,
                itemBuilder: (_, index) {
                  PlatformModel model =
                      AppConfig.instance.setting.platforms[index];
                  return IButton(
                    onTap: () => logic.updatePlatform(model),
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      child: StyledText(
                        text: '<img></img>${model.name}',
                        tags: {
                          'img': StyledTextWidgetTag(
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: IImage(
                                  model.logo,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                        },
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
          logic.updateShowPopover();
        },
        child: StyledText(
          text: '<img></img>${logic.platform.value.name}<icon></icon>',
          tags: {
            'img': StyledTextWidgetTag(
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: IImage(
                    logic.platform.value.logo,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
            'icon': StyledTextWidgetTag(
              AnimatedRotation(
                turns: logic.showPopover.isTrue ? -0.5 : 0,
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
          },
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      );
    });
  }
}
