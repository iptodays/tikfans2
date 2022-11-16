/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-12 17:09:43
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-05 15:57:02
 * @FilePath: /tikfans/lib/pages/store/alert/user.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/user.dart';
import 'package:tikfans2/pages/login/login.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/image.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class UserAlert extends StatelessWidget {
  UserAlert({
    super.key,
    this.callback,
    this.model,
  });

  final UserModel? model;

  final Function(UserModel)? callback;

  final SocialLogic logic = Get.find<SocialLogic>();

  List<UserModel> get list => AppConfig.instance.box
      .read('user_${logic.platform.value.platform}')
      .map<UserModel>((v) => UserModel.fromJson(v))
      .toList();

  @override
  Widget build(BuildContext context) {
    return IScaffold(
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
              appBarBuilder(),
              itemBuilder(),
              sunbmitBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget appBarBuilder() {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          alignment: Alignment.center,
          child: Text(
            translate.store.changeAccount.title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IButton(
            onTap: () => Get.back(),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.close_rounded,
                color: Colors.white.withOpacity(0.5),
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget itemBuilder() {
    return Obx(() {
      return Container(
        constraints: const BoxConstraints(
          maxHeight: 200,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: list
                .map(
                  (e) => IButton(
                    onTap: () {
                      Get.back();
                      if (callback != null) {
                        callback!(e);
                      } else {
                        logic.setUserModel(e);
                      }
                    },
                    child: Container(
                      height: 52,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: ClipOval(
                              child: IImage(
                                e.avatar,
                                width: 32,
                                height: 32,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              e.fullname,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Visibility(
                            visible:
                                (model?.id ?? logic.user.value!.id) == e.id,
                            child: Image.asset(
                              'assets/img/universal/checked.png',
                              height: 9,
                              width: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      );
    });
  }

  Widget sunbmitBuilder() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: IButton(
        onTap: () {
          Get.back();
          Get.dialog(
            LoginPage(),
            useSafeArea: false,
            barrierDismissible: false,
            arguments: {'model': logic.platform.value},
          );
        },
        child: Container(
          height: 44,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: HexColor('#4135FF'),
            ),
          ),
          child: Text(
            translate.store.changeAccount.add,
            style: TextStyle(
              color: HexColor('#4135FF'),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
