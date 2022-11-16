/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:23:38
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-30 11:00:50
 * @FilePath: /tikfans/lib/widgets/image.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hexcolor/hexcolor.dart';

class IImage extends StatelessWidget {
  const IImage(
    this.url, {
    Key? key,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  }) : super(key: key);

  final String url;

  final BoxFit fit;

  final double? width;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: fit,
      width: width,
      height: height,
      errorWidget: (_, url, v) {
        return Container(
          color: HexColor('#DDDFE1').withOpacity(0.4),
        );
      },
      placeholder: (_, url) {
        return Container(
          color: HexColor('#DDDFE1').withOpacity(0.4),
        );
      },
      cacheManager: DefaultCacheManager(),
    );
  }
}
