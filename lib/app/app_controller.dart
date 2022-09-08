import 'dart:ui';

import 'package:base/data/api/repository/common_repository.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:get/get.dart';

import '../data/storage/app_storage.dart';
import '../di/locator.dart';
import '../res/app_localizations.dart';
import 'environment.dart';

class AppController extends GetxController {
  late Environment env;
  Rx<AuthState> authState = AuthState.unauthorized.obs;
  Rx<Locale?> locale = Rx(null);

  setLanguage(String language) async {
    Get.find<CommonRepository>().setLanguage(language);
    locale.value = Locale(language);
  }

  init(Environment environment) async {
    env = environment;
    await setupLocator();
    await initStorage();
    initTheme();
    initLanguage();
    await initAuth();
    // initPhotos();
    // initGoogleMap();
  }

  initLanguage() async {
    String? language = await Get.find<CommonRepository>().getLanguage();
    locale.value = AppLocalizations.supportedLocales
        .firstWhere((locale) => locale.languageCode == language, orElse: () {
      language = AppLocalizations.supportedLocales.last.languageCode;
      return AppLocalizations.supportedLocales.last;
    });
  }

  initStorage() async {
    await Get.find<AppStorage>().init();
  }

  initTheme() async {
    await Get.find<ThemeManager>().init();
  }

  Future<void> initAuth() async {
    final storage = Get.find<AppStorage>();
    final user = await storage.getUserInfo();
    final token = await storage.getUserAccessToken();

    if (user != null && token != null) {
      await initApi(token: token);
      authState.value = AuthState.authorized;
    } else {
      await initApi();
      authState.value = AuthState.unauthorized;
    }
  }

  initApi({String? token}) async {
    String baseUrl;
  }
}

enum AuthState { unauthorized, authorized, uncompleted, new_install }
