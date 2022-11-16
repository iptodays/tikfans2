/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-03 14:55:03
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-17 20:25:26
 * @FilePath: /tikfans/lib/pages/task/task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/task.dart';
import 'package:tikfans2/models/pool.dart';
import 'package:tikfans2/pages/task/widgets/banner.dart';
import 'package:tikfans2/pages/task/widgets/not_login.dart';
import 'package:tikfans2/pages/task/widgets/tip.dart';
import 'package:tikfans2/pages/task/widgets/user.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/coins.dart';
import 'package:tikfans2/widgets/image.dart';
import 'package:tikfans2/widgets/platform_horizontal.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class TaskPage extends StatelessWidget {
  TaskPage({super.key});

  final TaskLogic logic = Get.put(TaskLogic());

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      backgroundColor: HexColor('#0F1525'),
      appBar: IAppBar(
        backgroundColor: HexColor('#0F1525'),
        leading: TaskUserView(),
        title: Text(Translations.of(context).task.title),
        actions: [
          CoinsButton(),
        ],
      ),
      body: Column(
        children: [
          const PlatformHorizontalWidget(),
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    HexColor('#1C1C31'),
                    HexColor('#10172A'),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Obx(() {
                      if (logic.socialLogic.user.value == null) {
                        return NotLoginView();
                      }
                      if (logic.list.isEmpty) {
                        return Center(
                          child: Text(
                            translate.task.noTask,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16,
                            ),
                          ),
                        );
                      }
                      return SingleChildScrollView(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            windowBuilder(),
                            TaskTipView(),
                          ],
                        ),
                      );
                    }),
                  ),
                  const BannerView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget windowBuilder() {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#1C2136'),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.fromLTRB(20, 32, 20, 20),
        child: Column(
          children: [
            SizedBox(
              height: Get.width - 168,
              child: Obx(
                () {
                  return PageView.builder(
                    controller: logic.controller,
                    itemCount: logic.list.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      PoolModel model = logic.list[index];
                      bool isLike = model.type == 'like';
                      Widget image = AspectRatio(
                        aspectRatio: isLike ? 0.7 : 1,
                        child: IImage(
                          model.image,
                          height: double.maxFinite,
                        ),
                      );
                      return Center(
                        child: isLike
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: image,
                              )
                            : ClipOval(
                                child: image,
                              ),
                      );
                    },
                  );
                },
              ),
            ),
            const Spacer(),
            workspaceBuilder(),
          ],
        ),
      ),
    );
  }

  Widget workspaceBuilder() {
    return SizedBox(
      height: 44,
      child: Row(
        children: [
          _Skip(
            onTap: () {
              if (!EasyLoading.isShow) {
                logic.nextTask();
              }
            },
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Obx(() {
              PoolModel model = logic.list[logic.index.value];
              return _Action(
                onTap: logic.launch,
                type: model.type,
                coins: model.reward,
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _Skip extends StatelessWidget {
  final VoidCallback? onTap;

  const _Skip({this.onTap});

  @override
  Widget build(BuildContext context) {
    return IButton(
      onTap: onTap,
      child: Container(
        width: 110,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: HexColor('#262C44'),
        ),
        child: AutoSizeText(
          Translations.of(context).task.skip,
          minFontSize: 10,
          maxLines: 1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _Action extends StatelessWidget {
  final VoidCallback onTap;

  final String type;

  final int coins;

  const _Action({
    required this.onTap,
    required this.type,
    required this.coins,
  });

  @override
  Widget build(BuildContext context) {
    return IButton(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: HexColor('#4135FF'),
        ),
        child: StyledText(
          text:
              '${Translations.of(context)['task.$type']} +$coins<coins></coins>',
          tags: {
            'coins': StyledTextWidgetTag(
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Image.asset(
                  'assets/img/universal/coins.png',
                  width: 20,
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
  }
}
