import 'dart:convert';

import 'package:base_flutter/data/firebase/firebase_utils.dart';
import 'package:base_flutter/data/firebase/local_notification_utils.dart';
import 'package:base_flutter/util/log_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationUtils {
  Future<void> initNotification({
    Function(String?)? onReceiverFCMToken,
    Function(NotificationResponse notification)? handleNotificationNavigation,
    Function(RemoteMessage message)? handleMessageOpenedApp,
    Future<void> Function(RemoteMessage message)? onBackgroundMessage,
    Function(RemoteMessage message)? onGetInitialMessage,
    Function(RemoteMessage message)? onReceiveMessage,
  }) async {
    // await FirebaseUtils.initFirebase();
    await FirebaseUtils.requestNotificationPermissions();
    LocalNotificationUtils.initialize(onSelectNotification: handleNotificationNavigation);

    FirebaseUtils.setUpFCMMessage(
      onReceiverFCMToken,
      onReceiveMessage: (message) {
        Log.d('showNotificationOnForeground - ${message.notification?.toMap().toString()}');
        LocalNotificationUtils.showNotificationOnForeground(message);
        onReceiveMessage?.call(message);
      },
      onMessageOpenedApp: handleMessageOpenedApp,
      onReceiveBackgroundMessage: onBackgroundMessage,
      onGetInitialMessage: onGetInitialMessage,
    );
  }

  handleReceiveMessage(RemoteMessage message) {
    final title = message.notification?.title;
    final content = message.notification?.body;
    final payload = jsonEncode(message.data);
    LocalNotificationUtils.showNotification(title: title ?? '', content: content ?? '', payload: payload);
  }
}
