enum Language {
  vietnamese(code: 'vi'),
  english(code: 'en');

  final String code;

  const Language({required this.code});

  static Language fromCode(String code) {
    for (Language lang in values) {
      if (lang.code == code.toLowerCase()) {
        return lang;
      }
    }
    return Language.vietnamese;
  }

  @override
  String toString() {
    return 'Language(apiCode: $code)';
  }
}
