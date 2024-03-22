import 'package:base/data/api/rest_client.dart';
import 'package:base/data/api/services/common_service.dart';
import 'package:base/data/api/services/user_service.dart';
import 'package:base/data/repositories/common_repository.dart';
import 'package:base/data/repositories/user_repository.dart';
import 'package:base/data/storage/app_storage.dart';
import 'package:base/data/storage/local_storage.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/utils/device_utils.dart';
import 'package:get/get.dart';

setupLocator() async {
  // client

  Get.lazyPut<RestClient>(() => RestClient(), fenix: true);
  // service
  Get.lazyPut<UserService>(() => UserService(), fenix: true);
  Get.lazyPut<CommonService>(() => CommonService(), fenix: true);

  // repository
  Get.lazyPut<UserRepository>(() => UserRepository(), fenix: true);
  Get.lazyPut<CommonRepository>(() => CommonRepository(), fenix: true);

  // common
  Get.lazyPut<LocalStorage>(() => AppStorage(), fenix: true);

  Get.lazyPut<ThemeManager>(() => ThemeManager(), fenix: true);

  Get.lazyPut<DeviceUtil>(() => DeviceUtil(), fenix: true);
}
