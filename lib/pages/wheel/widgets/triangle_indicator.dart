/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-06 19:28:09
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-06 22:48:26
 * @FilePath: /tikfans/lib/pages/wheel/widgets/triangle_indicator.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ITriangleIndicator extends StatelessWidget {
  const ITriangleIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ShapesPainter(),
      child: Container(
        width: 42,
        height: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              HexColor('#FBAB12'),
              HexColor('#FFEAA7'),
            ],
          ),
        ),
      ),
    );
  }
}

class ShapesPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width * 0.5, size.height)
      ..lineTo(size.width * 0.5, size.height)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
