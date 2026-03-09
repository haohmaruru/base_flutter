import 'package:base_flutter/app/app_global_define.dart';
import 'package:base_flutter/app/authentication_cubit.dart';
import 'package:base_flutter/app/authentication_state.dart';
import 'package:base_flutter/app/language_cubit.dart';
import 'package:base_flutter/app/theme_cubit.dart';
import 'package:base_flutter/data/model/enum/language.dart';
import 'package:base_flutter/di/di.dart';
import 'package:base_flutter/l10n/localizations.dart';
import 'package:base_flutter/router/app_page_route.dart';
import 'package:base_flutter/router/app_router.dart';
import 'package:base_flutter/theme/app_theme_data.dart' show AppThemeData;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.get<AuthenticationCubit>()),
        BlocProvider(create: (context) => di.get<LanguageCubit>()),
        BlocProvider(create: (context) => di.get<ThemeCubit>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthenticationCubit, AuthenticationState>(
            listener: (context, state) {
              switch (state) {
                case UnAuthenticationState():
                  Navigation.goToPage(AppPageRoute.login);
                  break;
                case AuthenticatedState():
                  Navigation.goToPage(AppPageRoute.home);
                  break;
              }
            },
          ),
        ],
        // for language
        child: BlocBuilder<LanguageCubit, Language>(
          // for theme
          builder: (context, language) => BlocBuilder<ThemeCubit, AppThemeData>(
            builder: (context, AppThemeData themeData) {
              final theme = ThemeData(extensions: [themeData]);
              return MaterialApp.router(
                title: environment.appName,
                theme: theme,
                routerConfig: appRouter,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: [Locale(Language.vietnamese.code), Locale(Language.english.code)],
                locale: Locale(language.code),
              );
            },
          ),
        ),
      ),
    );
  }
}
