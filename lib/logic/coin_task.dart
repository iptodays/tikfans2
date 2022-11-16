/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-12 15:44:15
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-10 10:40:55
 * @FilePath: /tikfans/lib/logic/coin_task.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:tikfans2/models/coin_task.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class CoinTaskLogic extends IGetxController {
  /// 是否执行任务
  bool get runing => _runing;
  bool _runing = false;

  /// 当前执行的任务
  CoinTaskModel get model => _model!;
  CoinTaskModel? _model;

  void setModel(CoinTaskModel model) {
    _model = model;
    _runing = true;
  }

  /// 重置
  void resetAll() {
    _runing = false;
    AppConfig.instance.setting.coinTasks
        .singleWhere((element) => element.id == model.id)
        .coins = 0;
    _model = null;
    update();
  }
}
