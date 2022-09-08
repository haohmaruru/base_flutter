import 'package:base/data/storage/app_storage.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:get/get.dart';

import '../data/api/repository/common_repository.dart';
import '../data/api/repository/user_repository.dart';
import '../data/api/service/common_service.dart';
import '../data/api/service/user_service.dart';
import '../utils/platform_channel.dart';

setupLocator() async {
  //Setup service
  Get.lazyPut<UserService>(() => UserService(), fenix: true);
  Get.lazyPut<CommonService>(() => CommonService(), fenix: true);

  //Setup responsitory
  Get.lazyPut<UserRepository>(() => UserRepository(), fenix: true);
  Get.lazyPut<CommonRepository>(() => CommonRepository(), fenix: true);

  Get.lazyPut<AppStorage>(() => AppStorage(), fenix: true);

  Get.lazyPut<ThemeManager>(() => ThemeManager(), fenix: true);

  Get.lazyPut<PlatformChannel>(() => PlatformChannel(), fenix: true);
}
