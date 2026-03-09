// abstract class AppThemeData<T extends AppThemeData<T>> extends ThemeExtension<T>
//     implements AppThemeColor {}

import 'package:base_flutter/theme/app_theme_color.dart';
import 'package:base_flutter/theme/basic_app_theme.dart';
import 'package:base_flutter/theme/secondary_theme.dart';
import 'package:flutter/material.dart';

abstract class AppThemeData<T extends AppThemeData<T>> extends ThemeExtension<T> implements AppThemeColor {
  abstract AppTheme theme;
}

enum AppTheme { basic, secondary }

AppTheme toAppTheme(String? themeName) {
  final lowerThemeString = themeName?.toLowerCase();
  for (AppTheme theme in AppTheme.values) {
    if (theme.name == lowerThemeString) {
      return theme;
    }
  }
  return AppTheme.basic;
}

extension AppThemeExtension on AppTheme {
  AppThemeData toAppThemeData() {
    switch (this) {
      case AppTheme.basic:
        return BasicAppTheme.self();
      case AppTheme.secondary:
        return SecondaryTheme.self();
    }
  }
}
