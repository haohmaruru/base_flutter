import 'package:base_flutter/data/firebase/notification_utils.dart';
import 'package:base_flutter/di/di.dart';
import 'package:base_flutter/util/device_util.dart';
import 'package:base_flutter/util/toast_util.dart';

setupUtilDI() {
  di.registerSingleton(DeviceUtil());
  di.registerLazySingleton(() => ToastUtil());
  di.registerSingleton(NotificationUtils());
}
