/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2022-09-01 16:10:49
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2023-01-07 20:25:30
 * @FilePath: /tikfans2/lib/utils/api/api_interceptors.dart
 * 
 * Copyright (c) 2022 by iptoday wangdong1221@outlook.com, All Rights Reserved. 
 */
import 'dart:convert';
import 'dart:io';

import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:steel_crypt/steel_crypt.dart';
import 'package:tikfans2/utils/config/config.dart';
// ignore: depend_on_referenced_packages
import 'package:convert/convert.dart';
// ignore: depend_on_referenced_packages
import 'package:crypto/crypto.dart';

class ApiInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Map<String, dynamic> params = {};
    if (options.data != null && options.data is Map) {
      options.data.forEach((key, value) {
        params['$key'] = '$value';
      });
    }
    if (AppConfig.instance.pushToken != null) {
      options.headers['x-app-pushToken'] = AppConfig.instance.pushToken;
    }
    String lang = 'en';
    if (AppConfig.instance.box.hasData('x-app-lang')) {
      lang = AppConfig.instance.box.read('x-app-lang');
    }
    options.headers['x-app-lang'] = lang;
    String ts = '${DateTime.now().millisecondsSinceEpoch}';
    params['route'] =
        options.path.startsWith('/') ? options.path.substring(1) : options.path;
    params['deviceId'] = AppConfig.instance.udid;
    params['bundleId'] = AppConfig.instance.package.packageName;
    params['version'] = AppConfig.instance.package.version;
    params['ts'] = '${DateTime.now().millisecondsSinceEpoch}';
    List<String> keys = options.headers.keys
        .where((element) =>
            element.startsWith('x-app') && element != 'x-app-platform')
        .toList();
    keys.sort((a, b) => a.compareTo(b));
    String val = '';
    for (var key in keys) {
      val += options.headers[key]!;
    }
    val += ts;
    options.headers['x-app-checksum'] =
        hex.encode(md5.convert(const Utf8Encoder().convert(val)).bytes);
    LogUtil.v('params: $params headers:${options.headers}');
    String json = jsonEncode(params);
    String crypted = _AesCryptUtils.encrypt(json);
    options.path = '/';
    options.data = crypted;
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == HttpStatus.ok ||
        response.statusCode == HttpStatus.created) {
      Map<String, dynamic> data = jsonDecode(
        _AesCryptUtils.decrypt('${response.data}'),
      );
      response.data = data;
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.data != null) {
      Map<String, dynamic> data = jsonDecode(
        _AesCryptUtils.decrypt('${err.response!.data}'),
      );
      err.response?.data = data;
    }
    super.onError(err, handler);
  }
}

class _AesCryptUtils {
  _AesCryptUtils._();

  static final String _password = base64Encode('FsQZnn7q2LmrKZNB'.codeUnits);

  static final AesCrypt _aesEncrypter = AesCrypt(
    padding: PaddingAES.pkcs7,
    key: _password,
  );

  /// ??????
  static String encrypt(String input) {
    return _aesEncrypter.cbc.encrypt(inp: input, iv: _password);
  }

  /// ??????
  static String decrypt(String encrypted) {
    return _aesEncrypter.cbc.decrypt(enc: encrypted, iv: _password);
  }
}
