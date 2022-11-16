/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 14:08:42
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-22 15:55:49
 * @FilePath: /tikfans/lib/pages/orders/orders.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/orders.dart';
import 'package:tikfans2/models/order.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/fading_circle.dart';
import 'package:tikfans2/widgets/image.dart';
import 'package:tikfans2/widgets/refresher.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class OrdersPage extends StatelessWidget {
  OrdersPage({super.key});

  final OrdersLogic logic = Get.put(OrdersLogic());

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      onInit: () => logic.onRefresh(),
      appBar: IAppBar(
        title: Text(translate.orders.title),
      ),
      body: Obx(() {
        return IFadingCircleView(
          loading: logic.loading.value,
          builder: (_) {
            if (logic.list.isEmpty) {
              return Center(
                child: Text(
                  translate.orders.empty,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 16,
                  ),
                ),
              );
            }
            return IRefresher(
              onRefresh: logic.onRefresh,
              onLoading: logic.loadData,
              controller: logic.controller,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                itemCount: logic.list.length,
                itemBuilder: (_, index) => itemBuilder(index),
              ),
            );
          },
        );
      }),
    );
  }

  Widget itemBuilder(int index) {
    OrderModel model = logic.list[index];
    return SizedBox(
      height: 88,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: IImage(
                    AppConfig.instance.setting.platforms
                        .singleWhere(
                            (element) => element.platform == model.platform)
                        .logo,
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      model.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          Text(
                            DateUtil.formatDateStr(
                              model.createdAt,
                              isUtc: false,
                            ),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          statusBuilder(model.smmStatus),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                '-\$${model.price}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 44, top: 8),
            child: Text(
              '#${model.id}',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget statusBuilder(String status) {
    LogUtil.v(status);
    String hex = '#1CC167';
    String value =
        translate['orders.${status.toLowerCase().replaceAll(' ', '_')}'];
    switch (status) {
      case 'Pending':
        hex = '#FF954F';
        break;
      case 'Processing':
        hex = '#33D0C0';
        break;
      case 'In Progress':
        hex = '#4C76FE';
        break;
      case 'Completed':
        hex = '#1CC167';
        break;
      case 'Partial':
      case 'Error':
      case 'Canceled':
        hex = '#EA445A';
        break;
      case 'Refunded':
        hex = '#8A8C8B';
        break;
      default:
    }
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: StyledText(
        text: '<color></color>$value',
        tags: {
          'color': StyledTextWidgetTag(
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: HexColor(hex),
                ),
              ),
            ),
          ),
        },
        style: TextStyle(
          color: HexColor(hex),
          fontSize: 12,
        ),
      ),
    );
  }
}
