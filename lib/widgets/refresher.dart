/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:24:26
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-19 17:17:20
 * @FilePath: /tikfans2/lib/widgets/refresher.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

class IRefresher extends StatelessWidget {
  final IRefreshController controller;

  final Widget? child;

  final Future<void> Function()? onLoading;

  final Future<void> Function()? onRefresh;

  const IRefresher({
    Key? key,
    required this.controller,
    this.onLoading,
    this.onRefresh,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      controller: controller,
      onLoad: onLoading,
      onRefresh: onRefresh,
      header: ClassicHeader(
        showMessage: false,
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.5),
        ),
        textStyle: TextStyle(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      footer: ClassicFooter(
        showMessage: false,
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.5),
        ),
        textStyle: TextStyle(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      child: child,
    );
  }
}

class IRefreshController extends EasyRefreshController {
  @override
  bool get controlFinishRefresh => true;

  @override
  bool get controlFinishLoad => true;

  /// 完成刷新操作
  void refreshCompleted() {
    finishRefresh();
  }

  /// 完成加载操作
  void loadCompleted(bool noMore) {
    finishLoad(noMore ? IndicatorResult.noMore : IndicatorResult.success);
  }
}
