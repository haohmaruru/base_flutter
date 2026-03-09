import 'package:flutter/material.dart';

import 'app_theme_data.dart';

class BasicAppTheme extends AppThemeData<BasicAppTheme> {
  BasicAppTheme.self();

  BasicAppTheme({
    required this.bannerColor,
    required this.primaryColor,
    required this.secondaryColor,
    required this.enableButtonColor,
    required this.disableButtonColor,
  });

  @override
  Color primaryColor = Colors.blue;

  @override
  Color bannerColor = Colors.purpleAccent;

  @override
  Color secondaryColor = Colors.red;

  @override
  ThemeExtension<BasicAppTheme> copyWith() {
    return BasicAppTheme(
      bannerColor: bannerColor,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      enableButtonColor: enableButtonColor,
      disableButtonColor: disableButtonColor,
    );
  }

  @override
  ThemeExtension<BasicAppTheme> lerp(
    covariant ThemeExtension<BasicAppTheme>? other,
    double t,
  ) {
    if (other is! BasicAppTheme) {
      return this;
    }
    return BasicAppTheme(
      bannerColor: Color.lerp(bannerColor, other.bannerColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      enableButtonColor: Color.lerp(
        enableButtonColor,
        other.enableButtonColor,
        t,
      )!,
      disableButtonColor: Color.lerp(
        disableButtonColor,
        other.disableButtonColor,
        t,
      )!,
    );
  }

  @override
  AppTheme theme = AppTheme.basic;

  @override
  Color disableButtonColor = Colors.black12;

  @override
  Color enableButtonColor = Colors.blue;
}
