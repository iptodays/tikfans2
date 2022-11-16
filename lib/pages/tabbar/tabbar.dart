/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:37:19
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-30 19:35:56
 * @FilePath: /tikfans/lib/pages/tabbar/tabbar.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tikfans2/logic/tabbar.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class TabBarPage extends StatelessWidget {
  TabBarPage({super.key});

  final TabBarLogic logic = Get.put(TabBarLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: logic.controller,
        children: logic.children,
      ),
      bottomNavigationBar: bottomNavigationBarBuilder(),
    );
  }

  Widget bottomNavigationBarBuilder() {
    return Obx(() {
      return _BottomNavigationBar(
        index: logic.cIndex.value,
        onTap: logic.onTap,
        labels: logic.labels,
      );
    });
  }
}

class _BottomNavigationBar extends StatelessWidget {
  final int index;

  final Function(int) onTap;

  final List<String> labels;

  const _BottomNavigationBar({
    required this.index,
    required this.onTap,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      items: labels
          .map((e) => BottomNavigationBarItem(
                label: Translations.of(context)['tabbar.$e'],
                icon: SvgPicture.asset(
                  'assets/svg/tabbar/$e.svg',
                  color: Colors.white.withOpacity(0.5),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/svg/tabbar/${e}_selected.svg',
                ),
              ))
          .toList(),
    );
  }
}
