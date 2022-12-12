/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:37:58
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-11 22:46:57
 * @FilePath: /tikfans2/lib/logic/tabbar.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:tikfans2/pages/setting/setting.dart';
import 'package:tikfans2/pages/store/store.dart';
import 'package:tikfans2/pages/task/task.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class TabBarController extends IGetxController {
  final PageController pageController = PageController();

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
    pageController.jumpToPage(index);
  }
}
