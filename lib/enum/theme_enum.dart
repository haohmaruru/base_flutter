enum AppTheme { light, dark }

extension AppThemeExt on AppTheme {
  String get name {
    switch (this) {
      case AppTheme.light:
        return 'light';
      case AppTheme.dark:
        return 'dark';
    }
  }
}

AppTheme getAppThemeFromName(String? appThemeName) {
  switch (appThemeName) {
    case 'light':
      return AppTheme.light;
    case 'dark':
      return AppTheme.dark;
  }
  return AppTheme.light;
}
