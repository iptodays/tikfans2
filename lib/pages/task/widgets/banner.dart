/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-25 18:22:46
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-11-16 16:01:56
 * @FilePath: /tikfans2/lib/pages/task/widgets/banner.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */

import 'package:flutter/material.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class BannerView extends StatefulWidget {
  const BannerView({super.key});

  @override
  State<StatefulWidget> createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView>
    with AutomaticKeepAliveClientMixin {
  bool onFailed = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (onFailed ||
        AppConfig.instance.setting.ads == null ||
        AppConfig.instance.setting.ads!.admobRate < 0) {
      return Container();
    }
    return UnityBannerAd(
      placementId: 'Banner_Android',
      onFailed: (_, error, msg) {
        setState(() {
          onFailed = true;
        });
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
