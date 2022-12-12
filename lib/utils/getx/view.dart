/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-12-11 21:29:55
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-11 21:32:42
 * @FilePath: /tikfans2/lib/utils/getx/view.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:tikfans2/utils/getx/getx.dart';

abstract class IGetView<T> extends GetView<T> {
  const IGetView({super.key});

  @override
  T get controller => GetInstance().find<T>(tag: tag)!;
}
