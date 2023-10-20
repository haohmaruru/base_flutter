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

Language getLanguageFromCode(String? languageCode) {
  switch (languageCode) {
    case 'vi':
      return Language.vi;
    case 'en':
      return Language.en;
  }
  return Language.vi;
}
