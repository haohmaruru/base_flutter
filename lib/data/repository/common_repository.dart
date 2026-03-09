import 'package:base_flutter/data/local/local_storage/local_storage.dart';
import 'package:base_flutter/data/model/enum/language.dart';
import 'package:base_flutter/di/di.dart';
import 'package:base_flutter/theme/app_theme_data.dart';

abstract class CommonRepository {
  Future<void> setTheme(AppTheme theme);

  Future<AppTheme> getTheme();

  Future<void> setLanguage(Language language);

  Future<Language> getLanguage();
}

class CommonRepositoryImpl extends CommonRepository {
  final _storage = di.get<LocalStorage>();

  @override
  Future<AppTheme> getTheme() async {
    return await _storage.getTheme();
  }

  @override
  Future<void> setTheme(AppTheme theme) async {
    return await _storage.setTheme(theme);
  }

  @override
  Future<Language> getLanguage() async {
    return _storage.getLanguage();
  }

  @override
  Future<void> setLanguage(Language language) async {
    return _storage.setLanguage(language);
  }
}
