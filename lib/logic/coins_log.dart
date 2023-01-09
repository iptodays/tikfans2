/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-19 17:24:15
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-06 15:40:02
 * @FilePath: /tikfans2/lib/logic/coins_log.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:tikfans2/models/coin_log.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/refresher.dart';

class CoinsLogLogic extends IGetxController {
  final IRefreshController controller = IRefreshController();

  /// 页码
  int _page = 1;

  /// 金币记录
  RxList<CoinLogModel> list = <CoinLogModel>[].obs;

  /// 刷新
  Future<void> onRefresh() async {
    _page = 1;
    loadData();
  }

  /// 获取金币记录
  Future<void> loadData() async {
    Response response = await Api().request(
      '/CoinLog.getCoinLogs',
      data: {'page': '$_page'},
    );
    if (loading.isTrue) {
      loading.toggle();
    }
    controller.refreshCompleted();
    if (response.isList) {
      controller.loadCompleted(response.result.isEmpty);
      if (response.result.isNotEmpty) {
        if (_page == 1) {
          list.clear();
        }
        _page += 1;
        list.addAll(
          response.result
              .map<CoinLogModel>((v) => CoinLogModel.fromJson(v))
              .toList(),
        );
      }
    }
  }
}
