import 'package:base/data/api/repository/base_repository.dart';
import 'package:get/get.dart';

import '../../storage/app_storage.dart';

class CommonRepository extends BaseRepository {
  AppStorage storage = Get.find<AppStorage>();

  setTheme(int theme) async {
    await storage.setTheme(theme);
  }

  Future<int> getTheme() async {
    return await storage.getTheme();
  }

  Future<void> setLanguage(String language) async =>
      storage.setLanguage(language);

  Future<String?> getLanguage() async => storage.getLanguage();
}
