enum AppTheme { White, Dark }

extension AppThemeExt on AppTheme {
  String get name {
    switch (this) {
      case AppTheme.White:
        return 'White';
      case AppTheme.Dark:
        return 'Dark';
    }
  }
}

AppTheme getAppThemeFromName(String? appThemeName) {
  switch (appThemeName) {
    case 'White':
      return AppTheme.White;
    case 'Dark':
      return AppTheme.Dark;
  }
  return AppTheme.White;
}
