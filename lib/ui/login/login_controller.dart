import 'package:base/app/app_controller.dart';
import 'package:base/data/repositories/common_repository.dart';
import 'package:base/enum/language_enum.dart';
import 'package:base/enum/theme_enum.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/ui/base/base_controller.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  changeLanguage() {
    final appController = Get.find<AppController>();
    if (appController.locale.value?.languageCode == Language.vi.languageCode) {
      appController.setLanguage(Language.en);
    } else {
      appController.setLanguage(Language.vi);
    }
    setState(ViewState.loaded, forceUpdate: true);
  }

  changeTheme() {
    if (currentAppTheme == AppTheme.light) {
      Get.find<ThemeManager>().setTheme(AppTheme.dark);
    } else {
      Get.find<ThemeManager>().setTheme(AppTheme.light);
    }
    setState(ViewState.loaded, forceUpdate: true);
  }

  getProduct() async {
    final commonRepository = Get.find<CommonRepository>();
    callApi(doSomething: () async {
      final product = await commonRepository.getProductDetail();
      final a = 0;
    });
  }
}
