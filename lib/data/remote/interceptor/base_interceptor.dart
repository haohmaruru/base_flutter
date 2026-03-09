import 'package:dio/dio.dart';

abstract class BaseInterceptor extends InterceptorsWrapper {
  static int cookieInterceptorPriority = 20;
  static int headerInterceptorPriority = 10;
  static int unauthorizedHeaderInterceptorPriority = 11;
  static int logInterceptorPriority = 30;
  static int curlInterceptorPriority = 31;
  static int refreshInterceptorPriority = 40;
  static int retryInterceptorPriority = 1;
  static int transformInterceptorPriority = 50;

  int get priority;
}
