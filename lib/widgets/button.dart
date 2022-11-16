/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:22:47
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-05 16:16:56
 * @FilePath: /tikfans/lib/widgets/button.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';

class IButton extends StatefulWidget {
  const IButton({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  final Widget child;

  final VoidCallback? onTap;

  @override
  State<StatefulWidget> createState() => _IButtonState();
}

class _IButtonState extends State<IButton> {
  /// 是否响应事件
  bool enable = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap == null
          ? null
          : () {
              if (enable) {
                enable = false;
                widget.onTap!();
                Future.delayed(const Duration(milliseconds: 1000)).then(
                  (value) {
                    enable = true;
                  },
                );
              } else {
                LogUtil.v('重复点击: $hashCode');
              }
            },
      child: widget.child,
    );
  }
}
