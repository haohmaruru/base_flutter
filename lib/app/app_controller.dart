import 'dart:io';
import 'dart:ui';

import 'package:base/data/api/api_constants.dart';
import 'package:base/data/api/rest_client.dart';
import 'package:base/data/repository/common_repository.dart';
import 'package:base/data/repository/user_repository.dart';
import 'package:base/data/storage/local_storage.dart';
import 'package:base/enum/language_enum.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/utils/device_utils.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../di/locator.dart';
import '../res/app_localizations.dart';
import 'environment.dart';

class AppController extends GetxController {
  late Environment env;
  Rx<AuthState> authState = AuthState.unauthorized.obs;
  Rx<Locale?> locale = Rx(null);

  setLanguage(Language language) async {
    Get.find<CommonRepository>().setLanguage(language);
    locale.value = Locale(language.languageCode);
  }

  init(Environment environment) async {
    env = environment;
    await setupLocator();
    await initStorage();
    initTheme();
    await initLanguage();
    await initAuth(environment);
  }

  initLanguage() async {
    String language =
        (await Get.find<CommonRepository>().getLanguage()).languageCode;
    locale.value = AppLocalizations.supportedLocales
        .firstWhere((locale) => locale.languageCode == language, orElse: () {
      language = AppLocalizations.supportedLocales.first.languageCode;
      return AppLocalizations.supportedLocales.first;
    });
  }

  initStorage() async {
    await Get.find<LocalStorage>().init();
  }

  initTheme() async {
    await Get.find<ThemeManager>().init();
  }

  Future<void> initAuth(Environment environment) async {
    final userRepository = Get.find<UserRepository>();
    final user = await userRepository.getUserInfo();
    final token = await userRepository.getUserAccessToken();

    if (user != null && token != null) {
      await initApi(token: token);
      authState.value = AuthState.authorized;
    } else {
      await initApi();
      authState.value = AuthState.unauthorized;
    }
  }

  Future<void> initApi(
      {String? token, Environment environment = Environment.dev}) async {
    String baseUrl = environment == Environment.dev
        ? BASE_URL_DEV
        : environment == Environment.staging
            ? BASE_URL_STAGING
            : BASE_URL_PROD;
    final deviceId = await Get.find<DeviceUtil>().getDeviceId();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    Get.find<RestClient>().init(
      baseUrl,
      platform: Platform.isAndroid ? 'Android' : 'Ios',
      deviceId: deviceId,
      language: locale.value?.countryCode,
      accessToken: token,
      appVersion: packageInfo.version,
    );
  }
}

enum AuthState { unauthorized, authorized, uncompleted, newInstall }
