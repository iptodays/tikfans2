import 'dart:async';
import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:tikfans2/models/global_tip.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/general.dart';

class BillingClientLogic extends IGetxController {
  /// 支付事件流
  StreamSubscription<List<PurchaseDetails>>? _subscription;

  @override
  void onInit() {
    _subscription = InAppPurchase.instance.purchaseStream.listen(
      _purchaseStreamUpdate,
    );
    super.onInit();
  }

  void _purchaseStreamUpdate(List<PurchaseDetails> purchaseDetails) async {
    for (PurchaseDetails details in purchaseDetails) {
      if (details.pendingCompletePurchase) {
        InAppPurchase.instance.completePurchase(details);
      }
      switch (details.status) {
        case PurchaseStatus.pending:
          EasyLoading.show();
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          EasyLoading.dismiss();
          _finishOrder(
            transactionDate: details.transactionDate!,
            serverVerificationData:
                details.verificationData.serverVerificationData,
          );
          break;
        case PurchaseStatus.canceled:
          EasyLoading.dismiss();
          break;
        case PurchaseStatus.error:
          EasyLoading.showToast('${details.error!.details}');
          AppConfig.instance.analytics.logEvent(
            name: 'purchase_error',
            parameters: {'value': details.error.toString()},
          );
          break;
        default:
      }
    }
  }

  /// 完成内购订单
  Future<void> _finishOrder({
    required String transactionDate,
    required String serverVerificationData,
  }) async {
    List<String> keys = AppConfig.instance.box
        .getKeys()
        .where((element) => '$element'.startsWith('order_'))
        .toList();
    dynamic result;
    for (var key in keys) {
      dynamic json = jsonDecode(AppConfig.instance.box.read(key));
      int ms = int.parse('${json['ms']}');
      if (int.parse(transactionDate) - 60 * 1000 <= ms) {
        result = json;
        AppConfig.instance.box.remove(key);
      } else {
        LogUtil.v(
          '数据不符合: $json',
          tag: 'BillingClientLogic',
        );
      }
    }
    LogUtil.v(
      result,
      tag: 'BillingClientLogic',
    );
    if (result != null) {
      EasyLoading.show();
      Response response = await Api().request(
        'Order.success',
        platform: result['platform'],
        data: {
          'orderId': result['id'],
          'token': serverVerificationData,
        },
      );
      EasyLoading.dismiss();
      if (response.isOk) {
        if (Get.isDialogOpen ?? false) {
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
  }

  @override
  void onClose() {
    _subscription?.cancel();
    super.onClose();
  }
}
