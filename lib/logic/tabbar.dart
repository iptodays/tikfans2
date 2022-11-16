/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:37:58
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-10 10:41:20
 * @FilePath: /tikfans/lib/logic/tabbar.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:tikfans2/pages/setting/setting.dart';
import 'package:tikfans2/pages/store/store.dart';
import 'package:tikfans2/pages/task/task.dart';
import 'package:tikfans2/utils/getx/getx.dart';

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

  /// 点击事件
  void onTap(int index) {
    cIndex.trigger(index);
    controller.jumpToPage(index);
  }
}
