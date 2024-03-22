import 'package:flutter/material.dart';

import '../colors.dart';
import 'text_theme.dart';
import 'theme_manager.dart';

ThemeData createTheme() {
  final textTheme = createTextTheme();
  return ThemeData(
      primaryColor: themes.colorPrimary,
      primaryColorDark: themes.secondary,
      backgroundColor: themes.colorWhite,
      scaffoldBackgroundColor: DColors.whiteColor,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
          color: themes.colorWhite,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: themes.colorPrimary,
          )),
      tabBarTheme: TabBarTheme(
          indicator: BoxDecoration(color: Colors.transparent),
          labelColor: themes.colorPrimary,
          unselectedLabelColor: themes.colorInActive),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: DColors.accentColor));
}
