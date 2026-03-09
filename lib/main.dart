import 'dart:async';

import 'package:base_flutter/app/app_global_define.dart';
import 'package:base_flutter/app/language_cubit.dart';
import 'package:base_flutter/util/log_util.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'app/my_app.dart';
import 'app/theme_cubit.dart';
import 'data/firebase/notification_utils.dart';
import 'data/model/flavor.dart';
import 'di/di.dart';
import 'util/device_util.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      _configEnvironment();
      await _initConfigApp();
      runApp(const MyApp());
    },
    (error, stack) {
      if (!kDebugMode) {
        Log.e('catch error', error: error, stackTrace: stack);
        FirebaseCrashlytics.instance.recordError(error, stack);
      } else {
        throw error;
      }
    },
  );
}

_initConfigApp() async {
  await setupDI();
  di.get<DeviceUtil>().init();
  _initLanguage();
  await _initTheme();
  _initNotification();
}

_initNotification() async {
  final notificationUtils = di.get<NotificationUtils>();
  await notificationUtils.initNotification(
    handleNotificationNavigation: _handleSelectNotification,
    handleMessageOpenedApp: _handleMessageOpenedApp,
    onBackgroundMessage: onBackgroundMessage,
    onGetInitialMessage: _handleMessageOpenedApp,
  );
}

_initLanguage() async {
  final languageCubit = di.get<LanguageCubit>();
  languageCubit.getLanguage();
}

_initTheme() async {
  final themeCubit = di.get<ThemeCubit>();
  themeCubit.getTheme();
}

_configEnvironment() {
  const flavor = String.fromEnvironment('flavor', defaultValue: 'dev');
  environment = Environment.getEnvironmentFromString(flavor);
  Log.d('flavor: $flavor');
}

_handleSelectNotification(NotificationResponse response) {
  Log.d("handleSelectNotification");
  Log.d('select notification, payload= ${response.payload}');
}

_handleMessageOpenedApp(RemoteMessage message) async {
  Log.d("handleMessageOpenedApp");
  Log.d('_handleMessageOpenedApp, message= ${message.toMap().toString()}');
}

/// Handle android firebase background  message
@pragma('vm:entry-point')
Future<void> onBackgroundMessage(RemoteMessage message) async {
  Log.d("onBackgroundMessage");
}
