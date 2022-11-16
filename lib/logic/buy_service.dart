/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-13 13:58:06
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-22 15:24:17
 * @FilePath: /tikfans/lib/logic/buy_service.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'dart:async';

import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:tikfans2/logic/coins.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/global_tip.dart';
import 'package:tikfans2/models/service.dart';
import 'package:tikfans2/models/user.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/general.dart';

class BuyServiceLogic extends IGetxController {
  final TextEditingController controller = TextEditingController();

  final CoinsLogic _coinsLogic = Get.find<CoinsLogic>();
  final SocialLogic _socialLogic = Get.find<SocialLogic>();

  /// 支付控制器单例
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;

  /// 支付事件流
  StreamSubscription<List<PurchaseDetails>>? _subscription;

  ///   订单id
  String? _orderId;

  /// 是否启用下一步
  RxBool enabled = false.obs;

  /// 当前使用的用户
  Rx<UserModel?> user = Rx(null);

  ServiceModel get model => Get.arguments['model'];

  @override
  void onReady() {
    _subscription = _inAppPurchase.purchaseStream.listen(
      _listenToPurchaseUpdated,
    );
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

  @override
  void onClose() {
    _orderId = null;
    _subscription?.cancel();
    super.onClose();
  }

  /// 更新当前使用用户
  void updateUser(UserModel? user) {
    this.user.trigger(user);
  }

  /// 支付状态变化
  Future<void> _listenToPurchaseUpdated(
    List<PurchaseDetails> purchaseDetailsList,
  ) async {
    for (PurchaseDetails purchaseDetails in purchaseDetailsList) {
      LogUtil.v(
        '${purchaseDetails.status}',
        tag: 'inAppPurchase',
      );
      if (purchaseDetails.status == PurchaseStatus.pending) {
        EasyLoading.show();
      } else {
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
        switch (purchaseDetails.status) {
          case PurchaseStatus.purchased:
            _finishOrder(
              token: purchaseDetails.verificationData.serverVerificationData,
            );
            break;
          case PurchaseStatus.error:
            EasyLoading.showToast('${purchaseDetails.error!.details}');
            AppConfig.instance.analytics.logEvent(
              name: 'purchase_error',
              parameters: {'value': purchaseDetails.error.toString()},
            );
            break;
          default:
            EasyLoading.dismiss();
        }
      }
    }
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
        '/Pool.getFreeFollowers',
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
        '/Pool.create',
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
    Get.back(
      closeOverlays: true,
    );
  }

  /// 创建内购订单
  Future<void> _createOrder() async {
    // ProductDetailsResponse productDetailsResponse =
    //     await _inAppPurchase.queryProductDetails(
    //   {'app_sub_0.99'},
    // );
    // if (productDetailsResponse.productDetails.isEmpty) {
    //   EasyLoading.showToast(translate.toast.purchasedNotFound);
    //   return;
    // }
    // _inAppPurchase.buyNonConsumable(
    //   purchaseParam: PurchaseParam(
    //     productDetails: productDetailsResponse.productDetails.first,
    //     applicationUserName: AppConfig.instance.udid,
    //   ),
    // );
    // return;
    bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      EasyLoading.showToast(translate.toast.unpurchase);
      return;
    }
    EasyLoading.show();
    Response response = await Api().request(
      '/Order.create',
      platform: _socialLogic.platform.value.platform,
      data: {
        'sku': model.sku,
        'productId': model.productId,
        'link': user.value?.username ?? controller.text,
      },
    );
    if (response.isOk) {
      EasyLoading.dismiss();
      _orderId = '${response.result}';
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

  /// 完成内购订单
  Future<void> _finishOrder({required String token}) async {
    EasyLoading.show();
    Response response = await Api().request(
      '/Order.success',
      platform: _socialLogic.platform.value.platform,
      data: {
        'orderId': _orderId,
        'token': token,
      },
    );
    EasyLoading.dismiss();
    if (response.isOk) {
      Get
        ..back(
          closeOverlays: true,
        )
        ..dialog(
          GeneralAlert(
            model: GlobalTipModel(
              title: translate.store.purchase.title,
              description: translate.store.purchase.message,
              force: true,
            ),
          ),
          useSafeArea: false,
          barrierDismissible: false,
        );
    }
  }
}
