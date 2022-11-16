/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-12 14:23:28
 * @FilePath: /tikfans/lib/models/order.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
class OrderModel {
  /// 任务id
  late final int id;

  /// 标题
  late final String title;

  /// 支付id
  late final String payId;

  /// 平台
  late final String platform;

  /// 服务id
  late final String service;

  /// 价格
  late final double price;

  /// 数量
  late final int count;

  /// link
  late final String link;

  /// 订单状态
  late final String smmStatus;

  /// 创建时间
  late final String createdAt;

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    payId = json['payId'];
    platform = json['platform'];
    service = json['service'];
    price = double.parse('${json['price']}');
    count = json['count'];
    link = json['link'];
    smmStatus = json['smmStatus'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['payId'] = payId;
    data['platform'] = platform;
    data['service'] = service;
    data['price'] = price;
    data['count'] = count;
    data['link'] = link;
    data['createdAt'] = createdAt;
    data['smmStatus'] = smmStatus;
    return data;
  }
}
