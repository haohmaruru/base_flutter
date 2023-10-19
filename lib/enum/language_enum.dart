enum Language { vi, en }

extension LanguageExt on Language {
  String get languageCode {
    switch (this) {
      case Language.vi:
        return 'vi';
      case Language.en:
        return 'en';
    }
  }
}

extension AppThemeStringExt on String? {
  Language getLanguage() {
    switch (this) {
      case 'vi':
        return Language.vi;
      case 'en':
        return Language.en;
    }
    return Language.vi;
  }
}
