/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 14:09:45
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-30 10:58:33
 * @FilePath: /tikfans2/lib/pages/faq/faq.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/widgets/scaffold.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IScaffold(
      appBar: IAppBar(
        title: Text(translate.faq.title),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        itemCount: translate.faq.values.length,
        itemBuilder: (_, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                translate.faq.values[index].title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Builder(builder: (_) {
                  var value = translate.faq.values[index].value;
                  if (value is String) {
                    return Text(
                      translate.faq.values[index].value,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 16,
                        height: 1.2,
                      ),
                    );
                  } else {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: value.length,
                      itemBuilder: (_, index) {
                        return Text(
                          value[index],
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                            height: 1.2,
                          ),
                        );
                      },
                      separatorBuilder: (_, index) {
                        return const SizedBox(height: 10);
                      },
                    );
                  }
                }),
              ),
            ],
          );
        },
        separatorBuilder: (_, index) {
          return const SizedBox(height: 24);
        },
      ),
    );
  }
}
