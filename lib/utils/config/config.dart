import 'dart:io';
import 'dart:math';

import 'package:android_play_install_referrer/android_play_install_referrer.dart';
import 'package:common_utils/common_utils.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:get_storage/get_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:tikfans2/models/setting.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:timezone/data/latest_all.dart';
import 'package:timezone/timezone.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class AppConfig {
  AppConfig._();
  static AppConfig get instance => _instance;
  static final AppConfig _instance = AppConfig._();

  /// 设备信息
  AndroidDeviceInfo? get android => _android;
  late final AndroidDeviceInfo? _android;
  IosDeviceInfo? get ios => _ios;
  late final IosDeviceInfo? _ios;

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

  /// 是否启用本地推送
  bool get enabledLocalNotification => _enabledLocalNotification;
  late final bool _enabledLocalNotification;

  /// 应用启动时间戳
  String get timestamp => box.read('timestamp');

  /// 数据分析
  FirebaseAnalytics get analytics => FirebaseAnalytics.instance;

  /// 推送
  FirebaseMessaging get messaging => FirebaseMessaging.instance;

  /// 本地推送
  FlutterLocalNotificationsPlugin get localNotifications => _localNotifications;
  late final FlutterLocalNotificationsPlugin _localNotifications;

  /// 基础数据模型
  SettingModel get setting => _setting;
  late SettingModel _setting;

  /// 下次签到时间
  DateTime? checkInTime;

  /// 网络状态
  late ConnectivityResult connectivityResult;

  /// 重试次数
  int _retry = 1;

  /// 初始化信息
  Future<void> initialize(VoidCallback callback) async {
    WidgetsFlutterBinding.ensureInitialized();
    Connectivity connectivity = Connectivity();
    connectivityResult = await connectivity.checkConnectivity();
    connectivity.onConnectivityChanged.listen(_onConnectivityChanged);
    await Firebase.initializeApp();
    await getInformation();
    callback();
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

  /// 配置推送
  Future<void> notificationSettings() async {
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
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LogUtil.v('Got a message whilst in the foreground!');
      LogUtil.v('Message data: ${message.data}');
      if (message.notification != null) {
        LogUtil.v(
          'Message also contained a notification: ${message.notification}',
        );
        RemoteNotification remoteNotification = message.notification!;
        localNotifications.show(
          Random().nextInt(9999),
          remoteNotification.title,
          remoteNotification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              remoteNotification.android?.channelId ??
                  '${DateUtil.getNowDateMs()}',
              'firebase message',
              importance: Importance.max,
              priority: Priority.high,
            ),
          ),
        );
      }
    });
    messaging.onTokenRefresh.listen((fcmToken) async {
      await box.write('x-app-pushToken', fcmToken);
    });
  }

  /// 初始化基础信息
  Future<void> getInformation() async {
    LogUtil.init(isDebug: kDebugMode);
    await GetStorage.init();
    _box = GetStorage();
    await box.write('timestamp', '${DateUtil.getNowDateMs()}');
    await box.write('openCount', (box.read('openCount') ?? 0) + 1);
    _timezone = await FlutterNativeTimezone.getLocalTimezone();
    _locale = WidgetsBinding.instance.window.locale.toString();
    await UnityAds.init(
      gameId: '5022687',
      testMode: kDebugMode,
      onComplete: () {
        LogUtil.v('UnityAds 初始化成功');
      },
      onFailed: (error, errorMessage) {
        LogUtil.v('UnityAds 初始化失败: $errorMessage');
      },
    );
    initializeTimeZones();
    setLocalLocation(getLocation(timezone));
    if (box.hasData('x-app-lang')) {
      LocaleSettings.setLocaleRaw(box.read('x-app-lang'));
      Get.updateLocale(Locale(box.read('x-app-lang')));
    }
    _package = await PackageInfo.fromPlatform();
    _localNotifications = FlutterLocalNotificationsPlugin();
    if (Platform.isIOS) {
      _ios = await DeviceInfoPlugin().iosInfo;
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark,
      );
    } else if (Platform.isAndroid) {
      _android = await DeviceInfoPlugin().androidInfo;
      _enabledLocalNotification = await localNotifications
              .resolvePlatformSpecificImplementation<
                  AndroidFlutterLocalNotificationsPlugin>()
              ?.areNotificationsEnabled() ??
          false;
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
        ),
      );
    }
    localNotifications.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings(
          'ic_notification',
        ),
      ),
    );
    if (box.hasData('udid')) {
      _udid = box.read('udid');
    } else {
      if (kDebugMode) {
        _udid = '123456_${DateTime.now().millisecondsSinceEpoch}';
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
    notificationSettings();
    // await ImobileAds.initialize(
    //   testMode: kDebugMode,
    //   unityId: '4179821',
    // );
  }

  /// 获取设置
  Future<void> getSettings() async {
    if (_retry == 6) {
      _setting = SettingModel(isInReviewing: true);
      return;
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
      bool isAppBadgeSupported = await FlutterAppBadger.isAppBadgeSupported();
      if (isAppBadgeSupported) {
        await FlutterAppBadger.removeBadge();
      }
      if (data.containsKey('installReferrer')) {
        await box.write(
          'installReferrer',
          data['installReferrer']!,
        );
      }
      // response.result['isInReviewing'] = false;
      _setting = SettingModel.fromJson(response.result);
      if (!box.hasData('current_platform')) {
        await box.write(
          'current_platform',
          AppConfig.instance.setting.platforms.first.toJson(),
        );
      }
      if ((setting.dailyCheckIn?.countdown ?? 0) > 0) {
        checkInTime = DateTime.now().add(
          Duration(milliseconds: setting.dailyCheckIn!.countdown),
        );
      }
    } else {
      _retry += 1;
      await Future.delayed(Duration(seconds: _retry));
      await getSettings();
    }
  }

  /// 发送邮件
  Future<void> sendEmail(String email, {String? id}) async {
    String platform;
    if (Platform.isAndroid) {
      platform = android!.model;
    } else {
      bool canSendMail = await FlutterMailer.canSendMail();
      if (!canSendMail) {
        return;
      }
      platform =
          '${ios!.utsname.machine!}/${ios!.systemName}/${ios!.systemVersion}';
    }
    String body = '''
${'\n' * 2}
------ Don't delete infos below ------
uid: $udid
platform: $platform
version: ${AppConfig.instance.package.version}
''';
    if (ObjectUtil.isNotEmpty(id)) {
      body = body.replaceFirst('uid', 'id: $id\nuid');
    }
    final MailOptions mailOptions = MailOptions(
      body: body,
      subject: '${package.appName} issues',
      recipients: [email],
      isHTML: false,
    );
    await FlutterMailer.send(mailOptions);
  }

  /// 监听网络变化
  void _onConnectivityChanged(ConnectivityResult result) {
    connectivityResult = result;
  }
}
