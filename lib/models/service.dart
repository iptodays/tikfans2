/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-04 15:08:34
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2022-09-24 21:49:52
 * @FilePath: /tikfans/lib/models/service.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */

class ServiceModel {
  ServiceModel({
    required this.cls,
    required this.sku,
    required this.type,
    required this.count,
    required this.price,
    this.productId,
    this.discount,
  });

  /// 所属分类
  late final String cls;

  /// 商品标识
  late final String sku;

  /// 内购商品id
  String? productId;

  /// 类型
  late final String type;

  /// 数量
  late final int count;

  /// 是否为应用内货币
  bool get virtual => productId == null;

  /// 价格
  late final double price;
  String get priceStr {
    if ('$price'.endsWith('.0')) {
      return '$price'.replaceAll('.0', '');
    }
    return '$price';
  }

  /// 优惠力度
  String? discount;

  ServiceModel.fromJson(Map<String, dynamic> json) {
    cls = json['cls'];
    sku = json['sku'];
    type = json['type'];
    count = json['count'];
    price = double.parse('${json['price']}');
    discount = json['discount'];
    productId = json['productId'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['cls'] = cls;
    json['sku'] = sku;
    json['type'] = type;
    json['count'] = count;
    json['price'] = price;
    json['discount'] = discount;
    json['productId'] = productId;
    return json;
  }
}
