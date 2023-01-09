import 'dart:io';

import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:tikfans2/strings/strings.g.dart';
import 'package:tikfans2/utils/api/api_interceptors.dart';
import 'package:tikfans2/utils/config/config.dart';

export 'package:dio/dio.dart';

class Api {
  factory Api() => _sharedInstance();
  Api._() {
    String deviceInfo = '';
    String os = '';
    if (Platform.isAndroid) {
      os = 'android';
      deviceInfo =
          '$os/${AppConfig.instance.android.brand}/${AppConfig.instance.android.model}/${AppConfig.instance.android.version.release}';
    } else if (Platform.isIOS) {
      os = 'ios';
      deviceInfo =
          '$os/${AppConfig.instance.ios.utsname.machine}/${AppConfig.instance.ios.systemVersion}';
    }
    _options = BaseOptions(
        baseUrl: 'https://api.tikfans2.xyz',
        connectTimeout: 60000,
        receiveTimeout: 60000,
        contentType: 'text/plain',
        responseType: ResponseType.plain,
        method: 'POST',
        headers: <String, dynamic>{
          'x-app-os': os,
          'x-app-locale': AppConfig.instance.locale,
          'x-app-deviceInfo': deviceInfo,
          'x-app-timezone': AppConfig.instance.timezone,
        });
    _dio = Dio(_options);
    _dio.interceptors.addAll(<Interceptor>[
      ApiInterceptors(),
    ]);
  }

  static Api? _instance;
  static late final Dio _dio;
  static late final BaseOptions _options;

  // 静态、同步、私有访问点
  static Api _sharedInstance() => _instance ??= Api._();

  /// 网络请求
  /// onlyCycle: 当前App生命周期内仅请求一次
  Future<Response> request(
    String url, {
    Map<String, String?>? data,
  }) async {
    if (data == null) {
      data = {'platform': 'tiktok'};
    } else if (!data.containsKey('platform')) {
      data['platform'] = 'tiktok';
    }
    Response response;
    try {
      response = await _dio.request(
        url,
        options: Options(
          headers: {'x-app-platform': data['platform']},
        ),
        data: data,
      );
    } catch (e) {
      if (e is DioError) {
        DioError dioError = e;
        if (ObjectUtil.isNotEmpty(dioError.response)) {
          response = dioError.response!;
        } else {
          response = Response(
            statusCode: 500,
            statusMessage: translate.universal.requestError,
            requestOptions: RequestOptions(
              path: url,
              data: data,
            ),
          );
        }
      } else {
        response = Response(
          requestOptions: RequestOptions(path: url),
        );
      }
    }
    return response;
  }
}

extension ResponseEntension on Response {
  /// 是否请求成功
  bool get isOk =>
      statusCode == HttpStatus.ok &&
      data != null &&
      data is Map &&
      data!['code'] == 200;

  /// 是否为list
  bool get isList => isOk && result is List;

  /// data数据
  dynamic get result => data!['data'];

  /// 错误信息
  String get message {
    if (ObjectUtil.isNotEmpty(data) && data is Map) {
      return data!['message'];
    }
    if (ObjectUtil.isNotEmpty(statusMessage)) {
      return statusMessage!;
    }
    return translate.universal.requestError;
  }
}
