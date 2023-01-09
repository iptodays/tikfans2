import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:android_play_install_referrer/android_play_install_referrer.dart';
import 'package:common_utils/common_utils.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:get_storage/get_storage.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:tikfans2/models/global_tip.dart';
import 'package:tikfans2/models/setting.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/general.dart';

class AppConfig {
  AppConfig._();
  static AppConfig get instance => _instance;
  static final AppConfig _instance = AppConfig._();

  /// 设备信息
  AndroidDeviceInfo get android => _android;
  late final AndroidDeviceInfo _android;
  IosDeviceInfo get ios => _ios;
  late final IosDeviceInfo _ios;

  /// 应用信息
  PackageInfo get package => _package;
  late final PackageInfo _package;

  /// k/v storage
  GetStorage get box => _box;
  late final GetStorage _box;

  /// 设备唯一id
  String get udid => _udid;
  late final String _udid;

  /// 推送Token
  String? get pushToken => box.read('x-app-pushToken');

  /// 设备语言代码
  String get locale => _locale;
  late final String _locale;

  /// 时区
  late final String _timezone;
  String get timezone => _timezone;

  /// 应用启动时间戳
  String get timestamp => box.read('timestamp');

  /// 数据分析
  FirebaseAnalytics get analytics => FirebaseAnalytics.instance;

  /// 推送
  FirebaseMessaging get messaging => FirebaseMessaging.instance;

  /// 基础数据模型
  SettingModel get setting => _setting;
  late SettingModel _setting;

  /// 重试次数
  int _retry = 1;

  /// 支付事件流
  StreamSubscription<List<PurchaseDetails>>? _subscription;

  /// 初始化信息
  Future<void> initialize(VoidCallback callback) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    callback();
    _subscription = InAppPurchase.instance.purchaseStream.listen(
      _purchaseStreamUpdate,
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  /// 初始化基础信息
  Future<void> registerPlugin() async {
    LogUtil.init(isDebug: kDebugMode);
    await GetStorage.init();
    _box = GetStorage();
    await box.write('timestamp', '${DateUtil.getNowDateMs()}');
    await box.write('openCount', (box.read('openCount') ?? 0) + 1);
    _timezone = await FlutterNativeTimezone.getLocalTimezone();
    _locale = WidgetsBinding.instance.window.locale.toString();
    if (box.hasData('x-app-lang')) {
      LocaleSettings.setLocaleRaw(box.read('x-app-lang'));
      Get.updateLocale(Locale(box.read('x-app-lang')));
    }
    _package = await PackageInfo.fromPlatform();
    if (Platform.isIOS) {
      _ios = await DeviceInfoPlugin().iosInfo;
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark,
      );
    } else if (Platform.isAndroid) {
      _android = await DeviceInfoPlugin().androidInfo;
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
        ),
      );
    }
    if (box.hasData('udid')) {
      _udid = box.read('udid');
    } else {
      if (kDebugMode) {
        _udid = '${package.appName}_123456';
      } else {
        _udid = await FlutterUdid.consistentUdid;
      }
      await box.write('udid', _udid);
    }
    FirebaseCrashlytics.instance
      ..setUserIdentifier(udid)
      ..setCrashlyticsCollectionEnabled(
        !kDebugMode,
      );
    analytics
      ..logAppOpen()
      ..setUserId(id: udid)
      ..setAnalyticsCollectionEnabled(!kDebugMode);
    try {
      NotificationSettings settings = await messaging.requestPermission();
      switch (settings.authorizationStatus) {
        case AuthorizationStatus.authorized:
        case AuthorizationStatus.provisional:
          String? token = await messaging.getToken();
          if (token != null) {
            await box.write('x-app-pushToken', token);
          }
          break;
        default:
          await box.remove('x-app-pushToken');
      }
    } catch (e) {
      FirebaseCrashlytics.instance.setCustomKey('FirebaseMessaging', e);
    }
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        RemoteNotification remoteNotification = message.notification!;
        Get.snackbar(
          remoteNotification.title ?? '',
          remoteNotification.body ?? '',
          colorText: Colors.white,
          duration: const Duration(seconds: 5),
        );
      }
    });
  }

  /// 获取设置
  Future<void> getSettings() async {
    if (_retry == 6) {
      exit(0);
    }
    Map<String, String?> data = {};
    if (!box.hasData('installReferrer')) {
      ReferrerDetails referrerDetails =
          await AndroidPlayInstallReferrer.installReferrer;
      data['installReferrer'] = referrerDetails.installReferrer;
    }
    Response response = await Api().request(
      '/settings',
      data: data,
    );
    if (response.isOk) {
      if (data.containsKey('installReferrer')) {
        await box.write('installReferrer', data['installReferrer']!);
      }
      _setting = SettingModel.fromJson(response.result);
      if (!box.hasData('current_platform')) {
        await box.write(
          'current_platform',
          AppConfig.instance.setting.platforms.first.toJson(),
        );
      }
      if (setting.dailyCheckIn != null && setting.dailyCheckIn!.countdown > 0) {
        await box.write(
          'dailyCheckIn',
          DateUtil.getNowDateMs() + setting.dailyCheckIn!.countdown,
        );
      } else {
        await box.remove('dailyCheckIn');
      }
    } else {
      _retry += 1;
      await Future.delayed(Duration(seconds: _retry));
      await getSettings();
    }
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
      if (int.parse(transactionDate) - 180 * 1000 <= ms) {
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
      '数据符合要求: $result',
      tag: 'BillingClientLogic',
    );
    if (result != null) {
      EasyLoading.show();
      Response response = await Api().request(
        '/Order.success',
        data: {
          'platform': result['platform'],
          'orderId': result['id'],
          'token': serverVerificationData,
        },
      );
      EasyLoading.dismiss();
      if (response.isOk) {
        if (Get.isDialogOpen ?? false) {
          Get
            ..back()
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

  void dispose() {
    _subscription?.cancel();
  }
}
