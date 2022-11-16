/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:19:47
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-13 19:00:12
 * @FilePath: /tikfans/lib/widgets/scaffold.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/widgets/app_bar.dart';

export 'package:tikfans2/widgets/app_bar.dart';

class IScaffold extends StatefulWidget {
  final IAppBar? appBar;

  final Widget body;

  final bool resizeToAvoidBottomInset;

  final SystemUiOverlayStyle? systemUiOverlayStyle;

  final Color? backgroundColor;

  final bool keepAliveWrapper;

  final VoidCallback? onInit;

  final VoidCallback? dispose;

  final bool enabledCopy;

  final bool dismissOnCapturedTaps;

  const IScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.resizeToAvoidBottomInset = true,
    this.systemUiOverlayStyle,
    this.backgroundColor,
    this.keepAliveWrapper = true,
    this.onInit,
    this.dispose,
    this.enabledCopy = false,
    this.dismissOnCapturedTaps = true,
  });

  @override
  State<StatefulWidget> createState() => _IScaffoldState();
}

class _IScaffoldState extends State<IScaffold>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    if (widget.onInit != null) {
      widget.onInit!();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: widget.systemUiOverlayStyle ?? SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: widget.backgroundColor,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        body: KeyboardDismissOnTap(
          dismissOnCapturedTaps: widget.dismissOnCapturedTaps,
          child: Stack(
            children: [
              Visibility(
                visible: widget.backgroundColor == null,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        HexColor('#1C1C31'),
                        HexColor('#10172A'),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  widget.appBar ?? const SizedBox(),
                  Expanded(
                    child: widget.enabledCopy
                        ? SelectionArea(child: widget.body)
                        : widget.body,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (widget.dispose != null) {
      widget.dispose!();
    }
    super.dispose();
  }

  @override
  bool get wantKeepAlive => widget.keepAliveWrapper;
}
