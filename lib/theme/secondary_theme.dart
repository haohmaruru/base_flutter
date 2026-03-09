import 'package:flutter/material.dart';

import 'app_theme_data.dart';

class SecondaryTheme extends AppThemeData<SecondaryTheme> {
  SecondaryTheme.self();

  SecondaryTheme({
    required this.bannerColor,
    required this.primaryColor,
    required this.secondaryColor,
    required this.disableButtonColor,
    required this.enableButtonColor,
  });

  @override
  Color primaryColor = Colors.amberAccent;

  @override
  Color bannerColor = Colors.lime;

  @override
  Color secondaryColor = Colors.red;

  @override
  ThemeExtension<SecondaryTheme> copyWith() {
    return SecondaryTheme(
      bannerColor: bannerColor,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      disableButtonColor: disableButtonColor,
      enableButtonColor: enableButtonColor,
    );
  }

  @override
  ThemeExtension<SecondaryTheme> lerp(
    covariant ThemeExtension<SecondaryTheme>? other,
    double t,
  ) {
    if (other is! SecondaryTheme) {
      return this;
    }
    return SecondaryTheme(
      bannerColor: Color.lerp(bannerColor, other.bannerColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      disableButtonColor: Color.lerp(
        disableButtonColor,
        other.disableButtonColor,
        t,
      )!,
      enableButtonColor: Color.lerp(
        enableButtonColor,
        other.enableButtonColor,
        t,
      )!,
    );
  }

  @override
  AppTheme theme = AppTheme.secondary;

  @override
  Color disableButtonColor = Colors.black12;

  @override
  Color enableButtonColor = Colors.amberAccent;
}
