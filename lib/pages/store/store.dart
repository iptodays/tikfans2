/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-03 14:58:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-17 17:24:53
 * @FilePath: /tikfans2/lib/pages/store/store.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/pages/store/widgets/service.dart';
import 'package:tikfans2/pages/task/widgets/user.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/coins.dart';
import 'package:tikfans2/widgets/platform_horizontal.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class StorePage extends StatelessWidget {
  StorePage({super.key});

  final SocialLogic logic = Get.find<SocialLogic>();

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      backgroundColor: HexColor('#0F1525'),
      appBar: IAppBar(
        backgroundColor: HexColor('#0F1525'),
        leading: TaskUserView(),
        title: Text(Translations.of(context).store.title),
        actions: [
          CoinsButton(),
        ],
      ),
      body: Column(
        children: [
          const PlatformHorizontalWidget(),
          Expanded(
            child: Obx(() {
              return ServiceView(
                key: ValueKey(logic.platform.value.platform),
              );
            }),
          ),
        ],
      ),
    );
  }
}
