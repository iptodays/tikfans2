/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-07 16:28:43
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-07 16:28:53
 * @FilePath: /tikfans/lib/widgets/pinned_delegate.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';

class PinnedHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double max;
  final double min;
  final Widget Function(BuildContext context, double offset) builder;

  PinnedHeaderDelegate({
    required this.max,
    required this.min,
    required this.builder,
  }) : assert(max >= min);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return builder(context, shrinkOffset);
  }

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min;

  @override
  bool shouldRebuild(covariant PinnedHeaderDelegate oldDelegate) =>
      max != oldDelegate.max ||
      min != oldDelegate.min ||
      builder != oldDelegate.builder;
}
