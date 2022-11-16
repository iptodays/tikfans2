/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-07 10:09:50
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-15 17:34:01
 * @FilePath: /tikfans/lib/pages/account/widgets/users.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/global_tip.dart';
import 'package:tikfans2/models/user.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/widgets/button.dart';
import 'package:tikfans2/widgets/general.dart';
import 'package:tikfans2/widgets/image.dart';

class UsersView extends StatefulWidget {
  const UsersView({
    super.key,
    required this.platform,
  });

  final String platform;

  @override
  State<StatefulWidget> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  List<UserModel> list = [];

  @override
  void initState() {
    String key = 'user_${widget.platform}';
    if (AppConfig.instance.box.hasData(key)) {
      list = list = AppConfig.instance.box
          .read(key)
          .map<UserModel>((v) => UserModel.fromJson(v))
          .toList();
    }
    AppConfig.instance.box.listenKey(
      key,
      (json) {
        if (json == null) {
          list.clear();
        } else {
          list = json.map<UserModel>((v) => UserModel.fromJson(v)).toList();
        }

        if (mounted) setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return Container(
        height: 56,
        alignment: Alignment.center,
        child: Text(
          translate.account.empty,
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 14,
          ),
        ),
      );
    }
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (_, index) => _UserItem(
        model: list[index],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class _UserItem extends StatelessWidget {
  _UserItem({required this.model});

  final UserModel model;

  final SocialLogic logic = Get.find<SocialLogic>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 16,
            ),
            child: ClipOval(
              child: IImage(
                model.avatar,
                width: 32,
                height: 32,
              ),
            ),
          ),
          Expanded(
            child: Text(
              model.fullname,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Spacer(),
          IButton(
            onTap: () {
              Get.dialog(
                GeneralAlert(
                  model: GlobalTipModel(
                    title: translate.account.alert.title,
                    description: translate.account.alert.message,
                    force: false,
                  ),
                  onTap: () {
                    logic.deleteOneuser(model);
                  },
                ),
                useSafeArea: false,
                barrierDismissible: false,
              );
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Image.asset(
                'assets/img/account/logout.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
