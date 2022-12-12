/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:18:33
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-12 16:35:38
 * @FilePath: /tikfans2/lib/pages/splash/splash.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikfans2/logic/splash.dart';
import 'package:tikfans2/utils/getx/view.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class SplashPage extends IGetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: Image.asset(
                'assets/img/universal/splash.png',
                width: 68,
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: CupertinoActivityIndicator(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
