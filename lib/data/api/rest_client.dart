import 'package:dio/dio.dart';

import 'api_constants.dart';

class RestClient {
  static const TIMEOUT = 30000;
  static const ENABLE_LOG = true;
  static const ACCESS_TOKEN_HEADER = 'Authorization';
  static const LANGUAGE = 'Accept-Language';

  // singleton
  static final RestClient instance = new RestClient._internal();

  factory RestClient() {
    return instance;
  }

  RestClient._internal();

  late String baseUrl;
  late Map<String, dynamic> headers;

  void init(String baseUrl,
      {String? platform,
      String? deviceId,
      String? language,
      String? appVersion,
      String? accessToken}) {
    this.baseUrl = baseUrl;
    headers = {
      'Content-Type': 'application/json',
      'x-app-version': appVersion,
      'x-device-type': platform,
      'x-device-id': deviceId
    };
    if (accessToken != null) setToken(accessToken);
    setLanguage(language!);
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

  static Dio getDio({String? customUrl, bool isUpload = false}) {
    var dio = Dio(
        instance.getDioBaseOption(customUrl: customUrl, isUpload: isUpload));

    if (ENABLE_LOG) {
      dio.interceptors.add(LogInterceptor(
          requestBody: true, responseBody: true, logPrint: logPrint));
    }
    // //check expire time
    dio.interceptors.add(InterceptorsWrapper(
      onError: (DioError error, handler) async {
        handler.next(error);
      },
    ));

    return dio;
  }

  BaseOptions getDioBaseOption({String? customUrl, bool isUpload = false}) {
    return BaseOptions(
      baseUrl: isUpload
          ? UPLOAD_PHOTO_URL
          : customUrl != null
              ? customUrl
              : instance.baseUrl,
      connectTimeout: TIMEOUT,
      receiveTimeout: TIMEOUT,
      headers: instance.headers,
      responseType: ResponseType.json,
    );
  }

  static void logPrint(Object? object) async {
    int defaultPrintLength = 1020;
    if (object == null || object.toString().length <= defaultPrintLength) {
      print(object);
    } else {
      print(
          "===================================================================================================");
      final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
      pattern
          .allMatches(object.toString())
          .forEach((match) => print(match.group(0)));
      print(
          "===================================================================================================");
    }
  }
}
