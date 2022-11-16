/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-11-06 14:48:42
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-11-06 15:45:57
 * @FilePath: /tikfans/lib/logic/editor.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */
import 'package:common_utils/common_utils.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';

class EditorLogic extends IGetxController {
  RxString email = ''.obs;

  @override
  void onInit() {
    if (AppConfig.instance.setting.device.oauthEmail != null) {
      email.trigger(AppConfig.instance.setting.device.oauthEmail!);
    }
    super.onInit();
  }

  /// 完善该设备用户信息
  Future<void> updateUserInfo() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        LogUtil.v(googleSignInAccount.toString());
      }
    } catch (e) {
      LogUtil.v(e);
    }
  }
}
