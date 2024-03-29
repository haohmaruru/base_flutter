import 'package:base/app/app_controller.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import '../res/app_localizations.dart';
import 'app_pages.dart';
import 'app_routes.dart';

class MyApp extends GetWidget<AppController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Obx(
        () => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: controller.getAppTitle(),
          locale: controller.locale.value,
          theme: Get.find<ThemeManager>().themeData.value,
          initialRoute: _getRoute(),
          getPages: AppPages.pages,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
        ),
      ),
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }

  String _getRoute() {
    switch (controller.authState.value) {
      case AuthState.unauthorized:
        return AppRoutes.INITIAL;
      case AuthState.authorized:
        return AppRoutes.MAIN;
      case AuthState.newInstall:
        return AppRoutes.MAIN;
      default:
        return AppRoutes.MAIN;
    }
  }
}
