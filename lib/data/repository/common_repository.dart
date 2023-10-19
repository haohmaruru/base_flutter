import 'package:base/data/repository/base_repository.dart';
import 'package:base/data/storage/local_storage.dart';
import 'package:base/enum/language_enum.dart';
import 'package:base/enum/theme_enum.dart';
import 'package:get/get.dart';

class CommonRepository extends BaseRepository {
  final _storage = Get.find<LocalStorage>();

  setTheme(AppTheme theme) async {
    await _storage.setTheme(theme);
  }

  Future<AppTheme> getTheme() async {
    return await _storage.getTheme();
  }

  Future<void> setLanguage(Language language) async =>
      _storage.setLanguage(language);

  Future<Language> getLanguage() async => _storage.getLanguage();
}
