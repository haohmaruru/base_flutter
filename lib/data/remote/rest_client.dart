import 'dart:io';

import 'package:base_flutter/app/app_global_define.dart';
import 'package:base_flutter/data/model/flavor.dart';
import 'package:base_flutter/data/remote/interceptor/header_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'interceptor/dio_2_curl_interceptor.dart';

class RestClient {
  static const timeout = 30; // seconds
  static const enableLog = true;

  Dio getDio({String? customUrl, bool isUpload = false}) {
    final url = customUrl ?? environment.apiUrl;
    var dio = Dio(getDioBaseOption(url));

    // only for test
    // trust all certificate
    if (environment.flavor == Flavor.dev) {
      dio.httpClientAdapter = IOHttpClientAdapter(
        createHttpClient: () {
          final client = HttpClient();
          client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
          return client;
        },
      );
    }

    dio.interceptors.add(HeaderInterceptor());
    if (enableLog) {
      dio.interceptors.add(Dio2CurlInterceptor());
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }

    return dio;
  }

  BaseOptions getDioBaseOption(String url) {
    return BaseOptions(
      baseUrl: url,
      connectTimeout: const Duration(seconds: timeout),
      receiveTimeout: const Duration(seconds: timeout),
      responseType: ResponseType.json,
    );
  }
}
