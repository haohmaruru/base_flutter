import 'package:base/data/model/user.dart';
import 'package:base/enum/language_enum.dart';
import 'package:base/enum/theme_enum.dart';

abstract class LocalStorage {
  Future<void> init();
  Future<void> setUserAccessToken(String accessToken);
  Future<String?> getUserAccessToken();
  Future<void> setUserInfo(User user);
  Future<User?> getUserInfo();
  Future<void> setTheme(AppTheme theme);
  Future<AppTheme> getTheme();
  Future<void> setLanguage(Language language);
  Future<Language> getLanguage();
  Future<void> clearData();
}
