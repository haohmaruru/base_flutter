import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';

class Log {
  Log._();

  static void e(
    String message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
    String name = '',
  }) {
    _log(
      message,
      time: time,
      name: name,
      error: error,
      stackTrace: stackTrace,
      level: 2,
    );
  }

  static void d(String message, {DateTime? time, String name = ''}) {
    _log(message, time: time, name: name);
  }

  static void _log(
    String message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
    int? level,
    String name = '',
  }) {
    if (kDebugMode) {
      dev.log(
        message,
        time: time,
        name: name,
        error: error,
        stackTrace: stackTrace,
        level: level ?? 0,
      );
    }
  }
}
