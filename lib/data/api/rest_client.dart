import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RestClient {
  static const TIMEOUT = 30; // seconds
  static const ENABLE_LOG = true;
  static const ACCESS_TOKEN_HEADER = 'Authorization';
  static const LANGUAGE = 'Accept-Language';

  late String baseUrl;
  late String uploadUrl;
  late Map<String, dynamic> headers;

  void init(String baseUrl,
      {String uploadUrl = '',
      String? platform,
      String? deviceId,
      String? language,
      String? appVersion,
      String? accessToken}) {
    this.baseUrl = baseUrl;
    this.uploadUrl = uploadUrl;
    headers = {
      'Content-Type': 'application/json',
      'x-app-version': appVersion,
      'x-device-type': platform,
      'x-device-id': deviceId
    };
    if (accessToken != null) setToken(accessToken);
    if (language != null) setLanguage(language);
  }

  void setToken(String token) {
    headers[ACCESS_TOKEN_HEADER] = "Bearer $token";
  }

  void setLanguage(String language) {
    headers[LANGUAGE] = language;
  }

  void clearToken() {
    headers.remove(ACCESS_TOKEN_HEADER);
  }

  Dio getDio({String? customUrl, bool isUpload = false}) {
    var dio = Dio(
      getDioBaseOption(customUrl: customUrl, isUpload: isUpload),
    );

    if (ENABLE_LOG) {
      dio.interceptors.add(CurlLoggerDioInterceptor());
      dio.interceptors.add(
        PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90),
      );
    }

    return dio;
  }

  BaseOptions getDioBaseOption({String? customUrl, bool isUpload = false}) {
    return BaseOptions(
      baseUrl: isUpload ? uploadUrl : customUrl ?? baseUrl,
      connectTimeout: const Duration(seconds: TIMEOUT),
      receiveTimeout: const Duration(seconds: TIMEOUT),
      headers: headers,
      responseType: ResponseType.json,
    );
  }
}
