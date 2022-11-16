/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-03 20:56:06
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-17 21:53:23
 * @FilePath: /tikfans/lib/pages/coin_log/coin_log.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/coins_log.dart';
import 'package:tikfans2/models/coin_log.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/fading_circle.dart';
import 'package:tikfans2/widgets/refresher.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class CoinLogPage extends StatelessWidget {
  CoinLogPage({super.key});

  final CoinsLogLogic logic = Get.put(CoinsLogLogic());

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(),
      onInit: logic.onRefresh,
      body: Column(
        children: [
          Image.asset(
            'assets/img/universal/coins.png',
            width: 56,
            height: 56,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 40),
            child: Text(
              '${AppConfig.instance.setting.device.coins}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: HexColor('#1C2136'),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                      bottom: 16,
                    ),
                    child: Container(
                      width: 40,
                      height: 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.5),
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Obx(
                      () {
                        return IFadingCircleView(
                          loading: logic.loading.isTrue,
                          builder: (_) {
                            if (logic.list.isEmpty) {
                              return Container(
                                alignment: Alignment.center,
                                child: Text(
                                  translate.coins.empty,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              );
                            }
                            return IRefresher(
                              controller: logic.controller,
                              onLoading: logic.loadData,
                              onRefresh: logic.onRefresh,
                              child: ListView.builder(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                itemCount: logic.list.length,
                                itemBuilder: (_, index) => itemBuilder(index),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemBuilder(int index) {
    CoinLogModel model = logic.list[index];
    return SizedBox(
      height: 64,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Text(
                    DateUtil.formatDateStr(
                      model.createdAt,
                      isUtc: false,
                    ),
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            '${model.coins > 0 ? '+' : ''}${model.coins}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
