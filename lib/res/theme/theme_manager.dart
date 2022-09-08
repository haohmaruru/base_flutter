import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../data/api/repository/common_repository.dart';
import '../colors.dart';
import 'text_theme.dart';

enum AppTheme { White, Dark }

/// Returns enum value name without enum class name.
String enumName(AppTheme anyEnum) {
  return anyEnum.toString().split('.')[1];
}

final appThemeData = {
  AppTheme.White: ThemeData(
      primaryColor: DColors.primaryColor,
      primaryColorDark: DColors.primaryColorDark,
      backgroundColor: DColors.whiteColor,
      scaffoldBackgroundColor: DColors.whiteColor,
      textTheme: createTextTheme(),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      fontFamily: FontFamily,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        color: Colors.transparent, // status bar color
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: DColors.accentColor)),
  AppTheme.Dark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      fontFamily: FontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      )),
};

class ThemeManager with ChangeNotifier {
  ThemeData? _themeData;

  init() async {
    // We load theme at the start
    _loadTheme();
  }

  /// Use this method on UI to get selected theme.
  ThemeData get themeData {
    if (_themeData == null) {
      _themeData = appThemeData[AppTheme.White];
    }
    return _themeData!;
  }

  void _loadTheme() async {
    final preferredTheme = await Get.find<CommonRepository>().getTheme();
    currentAppTheme = AppTheme.values[preferredTheme];
    _themeData = appThemeData[currentAppTheme];
    // Once theme is loaded - notify listeners to update UI
    notifyListeners();
  }

  /// Sets theme and notifies listeners about change.
  setTheme(AppTheme theme) async {
    currentAppTheme = theme;
    _themeData = appThemeData[theme];

    // Here we notify listeners that theme changed
    // so UI have to be rebuild
    notifyListeners();
    await Get.find<CommonRepository>().setTheme(AppTheme.values.indexOf(theme));
  }
}

AppTheme currentAppTheme = AppTheme.White;

ColorScheme getColor() => Get.find<ThemeManager>().themeData.colorScheme;

extension MyColorScheme on ColorScheme {
  Color getColorTheme(Color colorThemeWhite, Color colorThemeDark) {
    switch (currentAppTheme) {
      case AppTheme.White:
        return colorThemeWhite;
      case AppTheme.Dark:
        return colorThemeDark;
      default:
        return colorThemeWhite;
    }
  }

  Color get colorPrimary =>
      getColorTheme(DColors.primaryColor, DColors.primaryColor);

  Color get success => getColorTheme(DColors.blueLight, DColors.yellowffDcolor);

  Color get black => getColorTheme(DColors.black, DColors.black);

  Color get colorWhite => getColorTheme(DColors.whiteColor, DColors.whiteColor);

  Color get colorInActive =>
      getColorTheme(DColors.whiteColor, DColors.whiteColor);
}
