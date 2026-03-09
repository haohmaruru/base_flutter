import 'package:base_flutter/app/theme_cubit.dart';
import 'package:base_flutter/theme/app_theme_data.dart';
import 'package:base_flutter/theme/basic_app_theme.dart';
import 'package:base_flutter/theme/secondary_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension ContextExtension on BuildContext {
  AppThemeData get theme {
    final currentThemeApp = read<ThemeCubit>();
    switch (currentThemeApp.state.theme) {
      case AppTheme.basic:
        return Theme.of(this).extension<BasicAppTheme>()!;
      case AppTheme.secondary:
        return Theme.of(this).extension<SecondaryTheme>()!;
    }
  }
}
