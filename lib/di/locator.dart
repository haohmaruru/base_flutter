import 'package:base/data/api/repository/common_repository.dart';
import 'package:base/data/api/repository/user_repository.dart';
import 'package:base/data/api/rest_client.dart';
import 'package:base/data/api/service/common_service.dart';
import 'package:base/data/api/service/user_service.dart';
import 'package:base/data/storage/app_storage.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/utils/platform_channel.dart';
import 'package:get/get.dart';

setupLocator() async {
  // client

  Get.lazyPut<RestClient>(() => RestClient(), fenix: true);
  // service
  Get.lazyPut<UserService>(() => UserService(), fenix: true);
  Get.lazyPut<CommonService>(() => CommonService(), fenix: true);

  // responsitory
  Get.lazyPut<UserRepository>(() => UserRepository(), fenix: true);
  Get.lazyPut<CommonRepository>(() => CommonRepository(), fenix: true);

  Get.lazyPut<AppStorage>(() => AppStorage(), fenix: true);

  Get.lazyPut<ThemeManager>(() => ThemeManager(), fenix: true);

  Get.lazyPut<PlatformChannel>(() => PlatformChannel(), fenix: true);
}
