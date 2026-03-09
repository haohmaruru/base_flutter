import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DeviceUtil {
  String? _deviceId;
  String? _platform;
  String? _deviceName;
  String? _versionName;
  int? _versionCode;

  String get deviceId => _deviceId ?? '';

  String get platform => _platform ?? '';

  String get deviceName => _deviceName ?? '';

  String get versionName => _versionName ?? '';

  int get versionCode => _versionCode ?? 0;

  Future<void> init() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    _deviceId = await FlutterUdid.udid;
    if (Platform.isAndroid) {
      var build = await deviceInfoPlugin.androidInfo;
      // deviceId = build.serialNumber; //UUID for Android
      _deviceName = build.model;
      _platform = 'Android';
    } else if (Platform.isIOS) {
      final deviceInfoPlugin = DeviceInfoPlugin();
      final data = await deviceInfoPlugin.iosInfo;
      // deviceId = data.identifierForVendor; //UUID for iOS
      _deviceName = data.name;
      _platform = 'Ios';
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    _versionName = packageInfo.version;
    if (packageInfo.buildNumber.isNotEmpty) {
      _versionCode = int.parse(packageInfo.buildNumber);
    }
  }
}
