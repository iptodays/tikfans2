/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:17:59
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-12-12 16:34:57
 * @FilePath: /tikfans2/lib/utils/routes/routes.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:get/get.dart';
import 'package:tikfans2/bindings/splash.dart';
import 'package:tikfans2/pages/contact/contact.dart';
import 'package:tikfans2/pages/about/about.dart';
import 'package:tikfans2/pages/account/account.dart';
import 'package:tikfans2/pages/coin_log/coin_log.dart';
import 'package:tikfans2/pages/daily/daily.dart';
import 'package:tikfans2/pages/editor/editor.dart';
import 'package:tikfans2/pages/faq/faq.dart';
import 'package:tikfans2/pages/language/language.dart';
import 'package:tikfans2/pages/orders/orders.dart';
import 'package:tikfans2/pages/splash/splash.dart';
import 'package:tikfans2/pages/tabbar/tabbar.dart';
import 'package:tikfans2/pages/wheel/wheel.dart';

class AppRoutes {
  /// 启动页
  static const String splash = '/splash';

  /// 主页
  static const String tabbar = '/tabbar';

  /// 金币记录
  static const String coinLog = '/coin/log';

  /// 编辑个人信息
  static const String editor = '/editor';

  /// 签到
  static const String daily = '/daily';

  /// 抽奖
  static const String wheel = '/wheel';

  /// 账号管理
  static const String account = '/account';

  /// 选择语言
  static const String language = '/language';

  /// 订单记录
  static const String orders = '/orders';

  /// 常见问题
  static const String faq = '/faq';

  /// 关于
  static const String about = '/about';

  /// 联系方式
  static const String contact = '/contact';

  static List<GetPage> pages = [
    GetPage(
      name: splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(name: tabbar, page: () => const TabBarPage()),
    GetPage(name: coinLog, page: () => CoinLogPage()),
    GetPage(name: daily, page: () => DailyPage()),
    GetPage(name: wheel, page: () => WheelPage()),
    GetPage(name: account, page: () => AccountPage()),
    GetPage(name: language, page: () => LanguagePage()),
    GetPage(name: orders, page: () => OrdersPage()),
    GetPage(name: faq, page: () => const FaqPage()),
    GetPage(name: about, page: () => const AboutPage()),
    GetPage(name: contact, page: () => const ContactUsPage()),
    GetPage(name: editor, page: () => EditorPage()),
  ];
}
