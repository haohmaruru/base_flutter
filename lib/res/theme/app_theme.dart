import 'package:flutter/material.dart';

import '../colors.dart';
import 'text_theme.dart';
import 'theme_manager.dart';

ThemeData createTheme() {
  final textTheme = createTextTheme();
  return ThemeData(
      primaryColor: getColor().colorPrimary,
      primaryColorDark: getColor().secondary,
      backgroundColor: getColor().colorWhite,
      scaffoldBackgroundColor: DColors.whiteColor,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
          color: getColor().colorWhite,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: getColor().colorPrimary,
          )),
      tabBarTheme: TabBarTheme(
          indicator: BoxDecoration(color: Colors.transparent),
          labelColor: getColor().colorPrimary,
          unselectedLabelColor: getColor().colorInActive),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: DColors.accentColor));
}
