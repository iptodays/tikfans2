/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-03 14:55:03
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-07 19:55:29
 * @FilePath: /tikfans2/lib/pages/task/task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/task.dart';
import 'package:tikfans2/models/pool.dart';
import 'package:tikfans2/pages/task/widgets/banner.dart';
import 'package:tikfans2/pages/task/widgets/execution.dart';
import 'package:tikfans2/pages/task/widgets/not_login.dart';
import 'package:tikfans2/pages/task/widgets/skip.dart';
import 'package:tikfans2/pages/task/widgets/tip.dart';
import 'package:tikfans2/pages/task/widgets/user.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/coins.dart';
import 'package:tikfans2/widgets/image.dart';
import 'package:tikfans2/widgets/platform_horizontal.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class TaskPage extends StatelessWidget {
  TaskPage({super.key});

  final TaskLogic logic = Get.find<TaskLogic>();

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
                      if (logic.list.isEmpty && logic.model.value == null) {
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
                  if (logic.model.value == null) {
                    return const SizedBox();
                  }
                  PoolModel model = logic.model.value!;
                  Widget image = AspectRatio(
                    aspectRatio: model.type == 'like' ? 0.7 : 1,
                    child: IImage(
                      model.image,
                      height: double.maxFinite,
                    ),
                  );
                  if (model.type == 'like') {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: image,
                    );
                  }
                  return ClipOval(
                    child: image,
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
          SkipWidget(),
          const SizedBox(width: 16),
          Expanded(
            child: ExecutionWidget(),
          ),
        ],
      ),
    );
  }
}
