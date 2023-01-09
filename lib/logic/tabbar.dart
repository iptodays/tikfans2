/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:37:58
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 18:47:26
 * @FilePath: /tikfans2/lib/logic/tabbar.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:tikfans2/pages/setting/setting.dart';
import 'package:tikfans2/pages/store/store.dart';
import 'package:tikfans2/pages/task/task.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/ad_floating_ball.dart';

class TabBarLogic extends IGetxController {
  final PageController controller = PageController();

  /// 当前选中下标
  final RxInt cIndex = 0.obs;

  final List<String> labels = [
    'task',
    'store',
    'setting',
  ];

  final List<Widget> children = [
    TaskPage(),
    StorePage(),
    const SettingPage(),
  ];

  @override
  void onReady() {
    if (AppConfig.instance.setting.adTasks.isNotEmpty) {
      Overlay.of(Get.overlayContext!)!.insert(
        OverlayEntry(
          builder: (_) {
            return ADFloatingBallView();
          },
        ),
      );
    }
    super.onReady();
  }

  /// 点击事件
  void onTap(int index) {
    cIndex.trigger(index);
    controller.jumpToPage(index);
  }
}
