import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class DeviceUtil {
  String? _deviceId;
  Future<String?> getDeviceId() async {
    if (_deviceId == null) {
      if (Platform.isAndroid) {
        const androidIdPlugin = AndroidId();
        _deviceId = (await androidIdPlugin.getId()); //UUID for Android
      } else if (Platform.isIOS) {
        final deviceInfoPlugin = DeviceInfoPlugin();
        final data = await deviceInfoPlugin.iosInfo;
        _deviceId = data.identifierForVendor; //UUID for iOS
      }
    }

    return _deviceId;
  }
}

class States extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _sta extends State<States> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
