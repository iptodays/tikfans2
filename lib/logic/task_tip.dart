/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-17 10:15:30
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-01 19:07:12
 * @FilePath: /tikfans/lib/logic/task_tip.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */

import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class TaskTipLogic extends IGetxController {
  /// 是否隐藏
  RxBool hiden = true.obs;

  @override
  void onReady() {
    if (!AppConfig.instance.box.hasData('task.tip.hiden')) {
      hiden.trigger(false);
    }
    super.onReady();
  }

  /// 关闭提示
  Future<void> closeTip() async {
    AppConfig.instance.box.write('task.tip.hiden', true);
    hiden.toggle();
  }
}
