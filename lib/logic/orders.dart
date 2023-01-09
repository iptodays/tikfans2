/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 14:15:55
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-10 10:41:05
 * @FilePath: /tikfans2/lib/logic/orders.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:tikfans2/models/order.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/refresher.dart';

class OrdersLogic extends IGetxController {
  final IRefreshController controller = IRefreshController();
  int _page = 1;

  RxList<OrderModel> list = <OrderModel>[].obs;

  Future<void> onRefresh() async {
    _page = 1;
    loadData();
  }

  Future<void> loadData() async {
    Response response = await Api().request(
      '/Order.getOrders',
      data: {'page': '$_page'},
    );
    controller.refreshCompleted();
    if (loading.isTrue) {
      loading.toggle();
    }
    if (response.isList) {
      if (_page == 1) {
        list.clear();
      }
      controller.loadCompleted(response.result.isEmpty);
      if (response.result.isNotEmpty) {
        _page += 1;
        list.addAll(response.result
            .map<OrderModel>((v) => OrderModel.fromJson(v))
            .toList());
      }
    }
  }
}
