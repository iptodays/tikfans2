/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-13 13:58:06
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-03 16:33:40
 * @FilePath: /tikfans2/lib/logic/buy_service.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'dart:async';
import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/service.dart';
import 'package:tikfans2/models/user.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class BuyServiceLogic extends IGetxController {
  final TextEditingController controller = TextEditingController();

  final CoinsLogic _coinsLogic = Get.find<CoinsLogic>();
  final SocialLogic _socialLogic = Get.find<SocialLogic>();

  /// 支付控制器单例
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;

  /// 是否启用下一步
  RxBool enabled = false.obs;

  /// 当前使用的用户
  Rx<UserModel?> user = Rx(null);

  ServiceModel get model => Get.arguments['model'];

  @override
  void onReady() {
    enabled.trigger(model.type == 'follow');
    if (enabled.isFalse) {
      updateUser(null);
    } else {
      if (user.value != null &&
          _socialLogic.platform.value.platform != user.value!.platform) {
        updateUser(null);
      }
      if (user.value == null && _socialLogic.user.value != null) {
        updateUser(_socialLogic.user.value);
      }
    }
    super.onReady();
  }

  /// 更新当前使用用户
  void updateUser(UserModel? user) {
    this.user.trigger(user);
  }

  /// 输入框内容发生改变
  void onChanged(String value) {
    if (controller.text.isNotEmpty &&
        controller.text.startsWith('https://') &&
        enabled.isFalse) {
      enabled.toggle();
    } else if ((controller.text.isEmpty ||
            !controller.text.startsWith('https://')) &&
        enabled.isTrue) {
      enabled.toggle();
    }
  }

  /// 开始支付流程
  Future<void> payNow() async {
    if (enabled.isFalse || EasyLoading.isShow) return;
    if (model.virtual) {
      _coinService();
    } else {
      _createOrder();
    }
  }

  /// 购买金币服务
  Future<void> _coinService() async {
    EasyLoading.show();
    if (model.price == 0) {
      Response response = await Api().request(
        'Pool.getFreeFollowers',
        platform: _socialLogic.platform.value.platform,
        data: {
          'username': user.value?.username ?? controller.text,
        },
      );
      if (response.isOk) {
        AppConfig.instance.setting.json[_socialLogic.platform.value.platform]
            ['freeFollowers'] = null;
        EasyLoading.showToast(translate.toast.received);
      } else {
        EasyLoading.showToast(response.message);
      }
    } else {
      Response response = await Api().request(
        'Pool.create',
        platform: _socialLogic.platform.value.platform,
        data: {
          'type': model.type,
          'sku': model.sku,
          'link': user.value?.username ?? controller.text,
        },
      );
      if (response.isOk) {
        EasyLoading.showToast(translate.toast.payment);
        _coinsLogic.updateCoins(response.result);
      } else {
        EasyLoading.showToast(response.message);
      }
    }
    Get.back(closeOverlays: true);
  }

  /// 创建内购订单
  Future<void> _createOrder() async {
    bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      EasyLoading.showToast(translate.toast.unpurchase);
      return;
    }
    EasyLoading.show();
    Response response = await Api().request(
      'Order.create',
      platform: _socialLogic.platform.value.platform,
      data: {
        'sku': model.sku,
        'productId': model.productId,
        'link': user.value?.username ?? controller.text,
      },
    );
    if (response.isOk) {
      LogUtil.v(
        response.result,
        tag: 'BillingClientLogic',
      );
      EasyLoading.dismiss();
      await AppConfig.instance.box.write(
        'order_${'${DateTime.now().millisecondsSinceEpoch}'}',
        jsonEncode(
          {
            'id': '${response.result}',
            'platform': _socialLogic.platform.value.platform,
            'ms': '${DateTime.now().millisecondsSinceEpoch}'
          },
        ),
      );
      ProductDetailsResponse productDetailsResponse =
          await _inAppPurchase.queryProductDetails(
        {model.productId!},
      );
      if (productDetailsResponse.productDetails.isEmpty) {
        EasyLoading.showToast(translate.toast.purchasedNotFound);
        return;
      }
      _inAppPurchase.buyConsumable(
        purchaseParam: PurchaseParam(
          productDetails: productDetailsResponse.productDetails.first,
          applicationUserName: AppConfig.instance.udid,
        ),
      );
    } else {
      EasyLoading.showToast(response.message);
    }
  }
}
