/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 21:41:47
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-12 16:28:49
 * @FilePath: /tikfans/lib/pages/setting/widgets/apps.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/coin_task.dart';
import 'package:tikfans2/models/coin_task.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/image.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppsView extends StatelessWidget {
  const AppsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, index) => _AppItem(
          model: AppConfig.instance.setting.coinTasks[index],
        ),
        childCount: AppConfig.instance.setting.coinTasks.length,
      ),
    );
  }
}

class _AppItem extends StatelessWidget {
  _AppItem({required this.model});

  final CoinTaskModel model;

  final CoinTaskLogic logic = Get.find<CoinTaskLogic>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: logic,
      builder: (_) {
        return IButton(
          onTap: () {
            if (model.coins > 0) {
              logic.setModel(model);
            }
            if (model.url != null) {
              launchUrlString(
                model.url!,
                mode: LaunchMode.externalApplication,
              );
            }
          },
          child: SizedBox(
            height: 68,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: IImage(
                      model.logo,
                      width: 44,
                      height: 44,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        model.name,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        model.description ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.5),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: model.coins > 0,
                  child: StyledText(
                    text: '+${model.coins}<img></img>',
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
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
