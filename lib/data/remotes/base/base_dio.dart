import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_demo_app/config/flavors.dart';
import 'package:flutter_demo_app/data/remotes/base/api_constants.dart';
import 'package:flutter_demo_app/data/remotes/base/interceptor/logging_interceptor.dart';

class BaseDio {
  BaseDio._();

  static BaseDio? _instance;

  static BaseDio getInstance() {
    return _instance ??= BaseDio._();
  }

  Dio getBaseDio() {
    final Dio dio = Dio();
    (dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;
    dio.options = BaseOptions(
        receiveTimeout: Duration(seconds: 15),
        connectTimeout: Duration(seconds: 15));
    dio.options.headers[ApiConstants.acceptHeader] =
        ApiConstants.applicationJson;
    if (F.isDev || F.isStg) {
      dio.interceptors.add(LoggingInterceptor());
    }
    return dio;
  }

  dynamic _parseAndDecode(String response) {
    return jsonDecode(response);
  }

  dynamic parseJson(String text) {
    return compute(_parseAndDecode, text);
  }
}
