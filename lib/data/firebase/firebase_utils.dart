import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:base_flutter/util/log_util.dart';

class FirebaseUtils {
  static Future<void> initFirebase({String? name, FirebaseOptions? options}) async {
    await Firebase.initializeApp(name: name, options: options);
    Log.d("complete Firebase.initializeApp");
    // Pass all uncaught errors from the framework to Crashlytics.
  }

  @pragma('vm:entry-point')
  static Future<void> onBackgroundMessage(RemoteMessage message) async {
    Log.d('onBackgroundMessage - ${message.toMap().toString()}');
  }

  static void setUpFCMMessage(
    Function(String?)? onReceiverFCMToken, {
    Function(RemoteMessage message)? onReceiveMessage,
    Function(RemoteMessage message)? onMessageOpenedApp,
    Future<void> Function(RemoteMessage message)? onReceiveBackgroundMessage,
    Function(RemoteMessage message)? onGetInitialMessage,
  }) async {
    // FirebaseMessaging.onBackgroundMessage(onReceiveBackgroundMessage!);
    FirebaseMessaging.onMessage.listen((message) async {
      Log.d('onMessage - ${message.notification?.toMap().toString()}');
      onReceiveMessage?.call(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) async {
      Log.d('onMessageOpenedApp - ${message.toMap().toString()}');
      onMessageOpenedApp?.call(message);
    });

    FirebaseMessaging.instance.onTokenRefresh.listen((token) async {
      Log.d('firebasetoken refresh: $token');
      onReceiverFCMToken?.call(token);
    });

    // Khi app bị kill hoàn toàn và mở lại từ thông báo
    FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) {
        Log.d("App opened from terminated state: ${message.data}");
        onGetInitialMessage?.call(message);
      }
    });

    final token = await FirebaseMessaging.instance.getToken();
    onReceiverFCMToken?.call(token);
    Log.d('firebasetoken: ${token ?? ''}');
  }

  static Future requestNotificationPermissions() async {
    FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }
}
