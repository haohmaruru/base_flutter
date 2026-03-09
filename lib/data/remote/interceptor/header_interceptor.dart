import 'package:base_flutter/data/local/local_storage/local_storage.dart';
import 'package:base_flutter/data/remote/interceptor/base_interceptor.dart';
import 'package:base_flutter/di/di.dart';
import 'package:base_flutter/util/device_util.dart';
import 'package:dio/dio.dart';

class HeaderInterceptor extends BaseInterceptor {
  @override
  int get priority => BaseInterceptor.headerInterceptorPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final deviceUtil = di.get<DeviceUtil>();
    final localStorage = di.get<LocalStorage>();
    final accessToken = await localStorage.getUserAccessToken();
    final language = await localStorage.getLanguage();

    options.headers.addAll({
      'accept': ' */*',
      'Connection': 'keep-alive',
      'x-device-name': deviceUtil.deviceName,
      'x-platform': deviceUtil.platform,
      'language': language,
      'content-type': 'application/json',
      if (accessToken?.isNotEmpty == true) 'Authorization': 'Bearer $accessToken',
    });
    super.onRequest(options, handler);
  }
}
