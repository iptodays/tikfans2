/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 14:31:13
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-03 16:36:11
 * @FilePath: /tikfans2/lib/pages/setting/widgets/fixed.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:tikfans2/pages/setting/widgets/item.dart';
import 'package:tikfans2/utils/routes/routes.dart';

class SFixedView extends StatelessWidget {
  const SFixedView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> labels = [
      '',
      // AppRoutes.editor,
      AppRoutes.account,
      '',
      AppRoutes.language,
      AppRoutes.orders,
      AppRoutes.faq,
    ];
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, index) {
          if (labels[index].isEmpty) {
            return const SizedBox(height: 20);
          }
          return SItemView(
            k: labels[index],
            top: labels[index - 1].isEmpty,
            bottom: index == labels.length - 1 || labels[index + 1].isEmpty,
          );
        },
        childCount: labels.length,
      ),
    );
  }
}
