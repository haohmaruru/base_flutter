import 'dart:convert';

import 'package:base/data/model/user.dart';
import 'package:base/data/storage/local_storage.dart';
import 'package:base/enum/language_enum.dart';
import 'package:base/enum/theme_enum.dart';
import 'package:get_storage/get_storage.dart';

class AppStorage implements LocalStorage {
  late GetStorage box;
  final storageName = "base_storage";
  final userAccessToken = "user_access_token";
  final userInfo = "user_info";
  final themeApp = "theme_app";
  final languageApp = "language";

  @override
  Future<void> init() async {
    await GetStorage.init(storageName);
    box = GetStorage(storageName);
  }

  @override
  Future<void> setUserAccessToken(String accessToken) async {
    box.write(userAccessToken, accessToken);
  }

  @override
  Future<String?> getUserAccessToken() async {
    final token = await box.read(userAccessToken);
    return token;
  }

  @override
  Future<void> setUserInfo(User user) async {
    String json = jsonEncode(user.toJson());
    box.write(userInfo, json);
  }

  @override
  Future<User?> getUserInfo() async {
    final userJson = await box.read(userInfo);
    return userJson != null ? User.fromJson(json.decode(userJson)) : null;
  }

  @override
  Future<void> setTheme(AppTheme theme) async {
    box.write(themeApp, theme.name);
  }

  @override
  Future<AppTheme> getTheme() async {
    final themeName = await box.read(themeApp);

    return getAppThemeFromName(themeName);
  }

  @override
  Future<void> setLanguage(Language language) async {
    box.write(languageApp, language.languageCode);
  }

  @override
  Future<Language> getLanguage() async {
    final languageCode = await box.read(languageApp);
    return getLanguageFromCode(languageCode);
  }

  @override
  Future<void> clearData() async {
    if (box.hasData(userAccessToken)) await box.remove(userAccessToken);
    if (box.hasData(userInfo)) await box.remove(userInfo);
  }
}
