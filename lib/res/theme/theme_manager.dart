import 'package:base/data/repositories/common_repository.dart';
import 'package:base/enum/theme_enum.dart';
import 'package:base/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'text_theme.dart';

/// Returns enum value name without enum class name.
String enumName(AppTheme anyEnum) {
  return anyEnum.toString().split('.')[1];
}

AppTheme currentAppTheme = AppTheme.light;

//Get themes instance
ColorScheme get themes => Get.find<ThemeManager>().themeData.value!.colorScheme;

final appThemeData = {
  AppTheme.light: ThemeData(
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
  AppTheme.dark: ThemeData(
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

class ThemeManager {
  final Rx<ThemeData?> themeData = Rx(appThemeData[AppTheme.light]);

  init() async {
    // We load theme at the start
    _loadTheme();
  }

  /// Use this method on UI to get selected theme.
  // ValueNotifier<ThemeData?> get themeData {
  //   _themeData.value ??= appThemeData[AppTheme.White];
  //   return _themeData;
  // }

  void _loadTheme() async {
    final preferredTheme = await Get.find<CommonRepository>().getTheme();
    currentAppTheme = preferredTheme;
    themeData.value = appThemeData[currentAppTheme];
  }

  /// Sets theme and notifies listeners about change.
  setTheme(AppTheme theme) async {
    currentAppTheme = theme;
    themeData.value = appThemeData[theme];
    await Get.find<CommonRepository>().setTheme(theme);
  }
}

extension MyColorScheme on ColorScheme {
  Color getColorTheme(Color colorThemeLight, Color colorThemeDark) {
    switch (currentAppTheme) {
      case AppTheme.light:
        return colorThemeLight;
      case AppTheme.dark:
        return colorThemeDark;
      default:
        return colorThemeLight;
    }
  }

  Color get colorPrimary =>
      getColorTheme(DColors.primaryColor, DColors.primaryColor);

  Color get success => getColorTheme(DColors.redGoogle, DColors.yellowffDcolor);

  Color get black => getColorTheme(DColors.black, DColors.black);

  Color get colorWhite => getColorTheme(DColors.whiteColor, DColors.whiteColor);

  Color get colorInActive =>
      getColorTheme(DColors.whiteColor, DColors.darkTextColor);
}
