/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-10-17 16:01:51
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-17 17:32:18
 * @FilePath: /tikfans2/lib/widgets/platform_horizontal.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/platform.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/image.dart';

class PlatformHorizontalWidget extends StatefulWidget {
  const PlatformHorizontalWidget({super.key});

  @override
  State<StatefulWidget> createState() => _PlatformHorizontalWidgetState();
}

class _PlatformHorizontalWidgetState extends State<PlatformHorizontalWidget> {
  final SocialLogic logic = Get.find<SocialLogic>();
  @override
  Widget build(BuildContext context) {
    if (AppConfig.instance.setting.platforms.length < 2) {
      return const SizedBox();
    }
    return Container(
      height: 64,
      color: HexColor('#0F1525'),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          PlatformModel model = AppConfig.instance.setting.platforms[index];
          return IButton(
            onTap: () => logic.updatePlatform(model),
            child: Obx(() {
              return Opacity(
                opacity:
                    logic.platform.value.platform == model.platform ? 1 : 0.24,
                child: Container(
                  alignment: Alignment.center,
                  height: double.maxFinite,
                  child: StyledText(
                    text: '<img></img>${model.name}',
                    tags: {
                      'img': StyledTextWidgetTag(
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
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
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            }),
          );
        },
        separatorBuilder: (_, index) {
          return const SizedBox(width: 24);
        },
        itemCount: AppConfig.instance.setting.platforms.length,
      ),
    );
  }
}
