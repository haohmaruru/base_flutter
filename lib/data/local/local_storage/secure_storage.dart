import 'package:base_flutter/data/local/local_storage/local_storage.dart';
import 'package:base_flutter/data/model/enum/language.dart';
import 'package:base_flutter/theme/app_theme_data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage extends LocalStorage {
  final storageName = "app_storage";
  final userAccessToken = "user_access_token";
  final userInfo = "user_info";
  final themeApp = "theme_app";
  final languageApp = "language";

  late FlutterSecureStorage storage;

  @override
  Future<SecureStorage> init() async {
    AndroidOptions androidOptions = AndroidOptions(encryptedSharedPreferences: true);
    storage = FlutterSecureStorage(aOptions: androidOptions);
    return this;
  }

  @override
  Future<void> setUserAccessToken(String accessToken) async {
    await storage.write(key: userAccessToken, value: accessToken);
  }

  @override
  Future<String?> getUserAccessToken() async {
    return await storage.read(key: userAccessToken);
  }

  @override
  Future<void> setLanguage(Language language) async {
    await storage.write(key: languageApp, value: language.code);
  }

  @override
  Future<Language> getLanguage() async {
    final languageCode = await storage.read(key: languageApp);
    return languageCode != null ? Language.fromCode(languageCode) : Language.vietnamese;
  }

  @override
  Future<void> setTheme(AppTheme theme) async {
    await storage.write(key: themeApp, value: theme.name);
  }

  @override
  Future<AppTheme> getTheme() async {
    final themeName = await storage.read(key: themeApp);
    return toAppTheme(themeName);
  }

  @override
  Future<void> clearData() async {
    await storage.deleteAll();
  }
}
