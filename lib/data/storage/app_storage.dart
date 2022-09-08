import 'dart:convert';

import 'package:get_storage/get_storage.dart';

import '../api/model/user.dart';

class AppStorage {
  late GetStorage box;
  static const STORAGE_NAME = "base_meoluoi_storage";
  static const USER_ACCESS_TOKEN = "user_access_token";
  static const USER_INFO = "user_info";
  static const THEME = "theme";
  static const LANGUAGE = "language";

  init() async {
    await GetStorage.init(STORAGE_NAME);
    box = GetStorage(STORAGE_NAME);
  }

  Future<void> saveUserAccessToken(String accessToken) async {
    box.write(USER_ACCESS_TOKEN, accessToken);
  }

  Future<String?> getUserAccessToken() async {
    final token = await box.read(USER_ACCESS_TOKEN);
    return token;
  }

  Future<void> saveUserInfo(User user) async {
    String json = jsonEncode(user.toJson());
    box.write(USER_INFO, json);
  }

  Future<User?> getUserInfo() async {
    final userJson = await box.read(USER_INFO);
    return userJson != null ? User.fromJson(json.decode(userJson)) : null;
  }

  Future<void> setTheme(int theme) async {
    box.write(THEME, theme);
  }

  Future<int> getTheme() async {
    final theme = await box.read(THEME);
    return theme ?? 0;
  }

  Future<void> setLanguage(String language) async {
    box.write(LANGUAGE, language);
  }

  Future<String?> getLanguage() async {
    final theme = await box.read(LANGUAGE);
    return theme;
  }

  Future<void> logout() async {
    if (box.hasData(USER_ACCESS_TOKEN)) await box.remove(USER_ACCESS_TOKEN);
    if (box.hasData(USER_INFO)) await box.remove(USER_INFO);
  }
}
