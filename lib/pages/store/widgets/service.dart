/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-07 17:14:31
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-10-17 20:19:06
 * @FilePath: /tikfans2/lib/pages/store/widgets/service.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tikfans2/logic/buy_service.dart';
import 'package:tikfans2/logic/social.dart';
import 'package:tikfans2/models/platform.dart';
import 'package:tikfans2/models/platform_service.dart';
import 'package:tikfans2/models/service.dart';
import 'package:tikfans2/pages/login/login.dart';
import 'package:tikfans2/pages/store/alert/buy.dart';
import 'package:tikfans2/pages/store/alert/notice_permission.dart';
import 'package:tikfans2/pages/store/alert/tip.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/config/config.dart';
import 'package:tikfans2/utils/getx/getx.dart';
import 'package:tikfans2/utils/getx/overlay.dart';
import 'package:tikfans2/widgets/button.dart';

class ServiceView extends StatefulWidget {
  const ServiceView({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView>
    with TickerProviderStateMixin {
  final SocialLogic logic = Get.find<SocialLogic>();

  PlatformModel get platform => logic.platform.value;

  PlatformServiceModel get service => PlatformServiceModel.fromJson(
      AppConfig.instance.setting.json[platform.platform]);

  final List<String> tabs = [];

  final List<List<ServiceModel>> models = [];

  late TabController controller;

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              HexColor('#1C1C31'),
              HexColor('#10172A'),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 33,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: TabBar(
                isScrollable: true,
                controller: controller,
                tabs: tabs
                    .map(
                      (e) => Tab(text: Translations.of(context)['store.$e']),
                    )
                    .toList(),
                labelColor: Colors.white,
                labelPadding: const EdgeInsets.symmetric(horizontal: 14),
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                indicatorColor: HexColor('#4135FF'),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.zero,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: models
                    .map(
                      (e) => GridView.builder(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 16,
                        ),
                        itemCount: e.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 1.1,
                        ),
                        itemBuilder: (_, index) => itemBuilder(e[index]),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemBuilder(ServiceModel model) {
    return IButton(
      onTap: () async {
        if (model.type == 'follow' && logic.user.value == null) {
          IGetOverlay.dialog(
            LoginPage(),
            arguments: {
              'model': logic.platform.value,
            },
          );
          return;
        }
        if (model.virtual &&
            model.price != 0 &&
            model.price > AppConfig.instance.setting.device.coins) {
          EasyLoading.showToast(translate.toast.coinsNotEnough);
          return;
        }

        if (model.price == 0 &&
            (await AppConfig.instance.messaging.getNotificationSettings())
                    .authorizationStatus ==
                AuthorizationStatus.denied) {
          IGetOverlay.dialog(
            NoticePermissionAlert(
              count: model.count,
            ),
          );
        } else {
          if ((model.type == 'follow' || model.type == 'like') &&
              !AppConfig.instance.box.hasData('store.${model.type}')) {
            await IGetOverlay.dialog(
              DifferentTipAlert(
                type: model.type,
              ),
            );
          }
          await IGetOverlay.dialog<BuyServiceLogic>(
            BuyServiceAlert(),
            deleteDependency: true,
            arguments: {'model': model},
          );
          if (model.price == 0 && service.freeFollowers == null) {
            loadData();
          }
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#1C2136'),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/store/${model.type}.svg',
              color: HexColor('#4135FF'),
              width: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 16,
              ),
              child: Text(
                '${model.count}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: 88,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: model.price == 0 ? null : HexColor('#4135FF'),
                borderRadius: BorderRadius.circular(15),
                gradient: model.price == 0
                    ? LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          HexColor('#FF7C4B'),
                          HexColor('#FF5757'),
                        ],
                      )
                    : null,
              ),
              child: model.price == 0
                  ? Text(
                      translate.store.free,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  : StyledText(
                      text:
                          '<unit></unit>${model.virtual ? '' : '\$'}${model.priceStr}',
                      tags: {
                        'unit': StyledTextWidgetTag(
                          Visibility(
                            visible: model.virtual,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Image.asset(
                                'assets/img/universal/coins.png',
                                width: 18,
                              ),
                            ),
                          ),
                        ),
                      },
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loadData() async {
    models.clear();
    tabs.clear();
    if (service.followers.isNotEmpty) {
      tabs.add('follow');
      List<ServiceModel> list = [];
      if (service.freeFollowers != null) {
        list.add(
          ServiceModel(
            cls: 'follow',
            sku: 'free',
            type: 'follow',
            count: service.freeFollowers!.count,
            price: 0,
          ),
        );
      }
      list.addAll(service.followers);
      models.add(list);
    }
    if (service.likes.isNotEmpty) {
      tabs.add('like');
      models.add(service.likes);
    }
    if (service.views.isNotEmpty) {
      tabs.add('view');
      models.add(service.views);
    }
    if (service.retweets.isNotEmpty) {
      tabs.add('retweet');
      models.add(service.retweets);
    }
    if (service.shares.isNotEmpty) {
      tabs.add('share');
      models.add(service.shares);
    }
    controller = TabController(
      length: tabs.length,
      vsync: this,
    );
    setState(() {});
  }
}
