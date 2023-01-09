/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 15:21:41
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-09 14:07:17
 * @FilePath: /tikfans2/lib/main.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/bindings/binding.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/routes/routes.dart';

import 'utils/getx/getx.dart';

void main() async {
  AppConfig.instance.initialize(() {
    runApp(
      TranslationProvider(
        child: const App(),
      ),
    );
  });

  EasyLoading.instance
    ..toastPosition = EasyLoadingToastPosition.top
    ..displayDuration = const Duration(seconds: 3);
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TikFollower',
      debugShowCheckedModeBanner: false,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: LocaleSettings.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      initialRoute: AppRoutes.splash,
      initialBinding: AppBindings(),
      getPages: AppRoutes.pages,
      builder: EasyLoading.init(
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
      ),
      navigatorObservers: [
        FirebaseAnalyticsObserver(
          analytics: AppConfig.instance.analytics,
        ),
      ],
      theme: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        platform: TargetPlatform.iOS,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
              // fontFamily: 'Roboto',
              ),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            // fontFamily: 'Roboto',
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: HexColor('#10172A'),
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
          ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
        ),
        dialogBackgroundColor: Colors.black.withOpacity(0.6),
        dialogTheme: DialogTheme(
          backgroundColor: Colors.black.withOpacity(0.6),
        ),
      ),
    );
  }
}
