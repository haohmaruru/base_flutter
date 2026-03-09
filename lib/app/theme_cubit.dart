import 'package:base_flutter/data/repository/common_repository.dart';
import 'package:base_flutter/di/di.dart';
import 'package:base_flutter/theme/app_theme_data.dart';
import 'package:base_flutter/theme/basic_app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<AppThemeData> {
  final _commonRepository = di.get<CommonRepository>();

  getTheme() async {
    final theme = await _commonRepository.getTheme();
    setTheme(theme.toAppThemeData());
  }

  ThemeCubit() : super(BasicAppTheme.self());

  setTheme(AppThemeData theme) {
    _commonRepository.setTheme(theme.theme);
    emit(theme);
  }
}
