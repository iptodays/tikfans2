/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-13 13:44:51
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-10 10:52:43
 * @FilePath: /tikfans2/lib/pages/store/alert/buy.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/buy_service.dart';
import 'package:tikfans2/models/service.dart';
import 'package:tikfans2/pages/store/alert/user.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/image.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class BuyServiceAlert extends StatelessWidget {
  BuyServiceAlert({super.key});

  final BuyServiceLogic logic = Get.put(BuyServiceLogic());

  ServiceModel get model => Get.arguments['model'];

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      dismissOnCapturedTaps: false,
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          decoration: BoxDecoration(
            color: HexColor('#1C2136'),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              titleBuilder(),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 10),
                child: SvgPicture.asset(
                  'assets/svg/store/${model.type}.svg',
                  color: HexColor('#4135FF'),
                  width: 24,
                ),
              ),
              Text(
                '${model.count}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              switchAccountBuilder(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  bottom: 16,
                ),
                child: Text(
                  model.sku.contains('youtube')
                      ? translate.store.buy.channelPublic
                      : translate.store.buy.accountPublic,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
              ),
              textFieldBuilder(),
              sunbmitBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleBuilder() {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            vertical: 24,
          ),
          child: Text(
            translate['store.buy.${model.type}'],
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IButton(
            onTap: () => Get.back(closeOverlays: true),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.close_rounded,
                color: Colors.white.withOpacity(0.5),
                size: 16,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget switchAccountBuilder() {
    if (model.type != 'follow') return const SizedBox();
    return Obx(() {
      if (logic.user.value == null ||
          AppConfig.instance.box
                  .read('user_${logic.user.value!.platform}')
                  .length ==
              1) {
        return const SizedBox();
      }
      return Padding(
        padding: const EdgeInsets.only(top: 24),
        child: SizedBox(
          height: 48,
          width: 48,
          child: IButton(
            onTap: () {
              Get.dialog(
                UserAlert(
                  model: logic.user.value,
                  callback: (val) {
                    logic.updateUser(val);
                  },
                ),
                useSafeArea: false,
                barrierDismissible: false,
              );
            },
            child: Stack(
              children: [
                ClipOval(
                  child: IImage(
                    logic.user.value!.avatar,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset(
                    'assets/svg/task/user_switch.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget textFieldBuilder() {
    if (model.type == 'follow') return const SizedBox();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#262C44'),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: HexColor('#343C5B'),
          ),
        ),
        constraints: const BoxConstraints(
          minHeight: 64,
          maxHeight: 120,
        ),
        child: TextField(
          cursorColor: Colors.white,
          controller: logic.controller,
          maxLines: null,
          onChanged: logic.onChanged,
          keyboardType: TextInputType.url,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            isDense: false,
            isCollapsed: false,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(14),
            hintText: translate['store.buy.${model.sku.split('-').first}'],
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  Widget sunbmitBuilder() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
      child: IButton(
        onTap: logic.payNow,
        child: Obx(() {
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 250),
            opacity: logic.enabled.isTrue ? 1 : 0.4,
            child: Container(
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: HexColor('#4135FF'),
                borderRadius: BorderRadius.circular(28),
              ),
              child: model.price == 0
                  ? Text(
                      translate.store.buy.pay,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  : StyledText(
                      text:
                          '${translate.store.buy.pay} <unit></unit>${model.virtual ? '' : '\$'}${model.priceStr}',
                      tags: {
                        'unit': StyledTextWidgetTag(
                          Visibility(
                            visible: model.virtual,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: Image.asset(
                                'assets/img/universal/coins.png',
                                width: 14,
                              ),
                            ),
                          ),
                        ),
                      },
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          );
        }),
      ),
    );
  }
}
