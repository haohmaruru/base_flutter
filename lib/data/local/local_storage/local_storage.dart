import 'package:base_flutter/data/model/enum/language.dart';
import 'package:base_flutter/theme/app_theme_data.dart';

abstract class LocalStorage {
  Future<LocalStorage> init();

  Future<void> setUserAccessToken(String accessToken);

  Future<String?> getUserAccessToken();

  Future<Language> getLanguage();

  Future<void> setLanguage(Language language);

  Future<void> setTheme(AppTheme theme);

  Future<AppTheme> getTheme();

  Future<void> clearData();
}
