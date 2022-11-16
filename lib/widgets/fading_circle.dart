/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-19 16:56:36
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-19 17:05:12
 * @FilePath: /tikfans/lib/widgets/fading_circle.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class IFadingCircleView extends StatelessWidget {
  const IFadingCircleView({
    super.key,
    required this.loading,
    required this.builder,
  });

  final bool loading;

  final Widget Function(BuildContext) builder;

  @override
  Widget build(BuildContext context) {
    if (!loading) {
      return builder(context);
    }
    return Center(
      child: SpinKitFadingCircle(
        size: 50,
        color: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
