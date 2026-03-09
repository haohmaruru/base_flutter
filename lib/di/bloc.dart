import 'package:base_flutter/app/authentication_cubit.dart';
import 'package:base_flutter/app/language_cubit.dart';
import 'package:base_flutter/app/theme_cubit.dart';
import 'package:base_flutter/ui/home/home_cubit.dart';
import 'package:base_flutter/ui/login/login_cubit.dart';

import 'di.dart';

setupBlocDI() {
  di.registerSingleton(ThemeCubit());
  di.registerSingleton(LanguageCubit());
  di.registerSingleton(AuthenticationCubit());
  di.registerFactory<HomeCubit>(() => HomeCubit());
  di.registerFactory<LoginCubit>(() => LoginCubit());
}
