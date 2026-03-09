import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:package_info_plus/package_info_plus.dart';

class LocalNotificationUtils {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'Passio_notification_channel',
    'Passio Notifications',
    description: 'This channel is used for Passio notifications.',
    importance: Importance.high,
  );

  static void initialize({
    void Function(NotificationResponse)? onSelectNotification,
  }) {
    final InitializationSettings initializationSettings =
        // ignore: prefer_const_constructors
        InitializationSettings(
          // ignore: prefer_const_constructors
          android: AndroidInitializationSettings('@drawable/ic_notification'),
          iOS: const DarwinInitializationSettings(
            requestSoundPermission: false,
            requestBadgePermission: false,
            requestAlertPermission: false,
          ),
        );
    _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse:
          onSelectNotification ?? (NotificationResponse payload) {},
    );
  }

  static Future<void> showNotificationOnForeground(
    RemoteMessage message,
  ) async {
    showNotification(
      title: message.notification?.title ?? '',
      content: message.notification?.body ?? '',
      payload: jsonEncode(message.data),
    );
  }

  static Future<void> showNotification({
    required String title,
    required String content,
    String? payload,
    String? imagePath,
  }) async {
    // ignore: prefer_const_constructors
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final String projectAppID = packageInfo.packageName;

    final androidNotificationStyle = imagePath?.isNotEmpty == true
        ? BigPictureStyleInformation(
            FilePathAndroidBitmap(imagePath!),
            contentTitle: title,
            summaryText: content,
            htmlFormatContentTitle: true,
            htmlFormatSummaryText: true,
            htmlFormatTitle: true,
            htmlFormatContent: true,
            hideExpandedLargeIcon: true,
          )
        : const DefaultStyleInformation(true, true);
    final notificationDetail = NotificationDetails(
      android: AndroidNotificationDetails(
        channel.id,
        channel.name,
        channelDescription: channel.description,
        icon: '@drawable/ic_notification',
        playSound: true,
        // sound: const RawResourceAndroidNotificationSound(
        //   'slow_spring_board',
        // ),
        largeIcon: imagePath?.isNotEmpty == true
            ? FilePathAndroidBitmap(imagePath!)
            : null,
        styleInformation: androidNotificationStyle,
        importance: Importance.max,
        priority: Priority.high,
      ),
      iOS: DarwinNotificationDetails(
        presentSound: true,
        // sound: 'slow_spring_board.aiff',
        presentAlert: true,
        presentBadge: false,
        subtitle: '',
        attachments: [
          if (imagePath?.isNotEmpty == true)
            DarwinNotificationAttachment(imagePath!),
        ],
      ),
    );

    _notificationsPlugin.show(
      DateTime.now().microsecond,
      title,
      content,
      notificationDetail,
      payload: payload,
    );
  }
}
