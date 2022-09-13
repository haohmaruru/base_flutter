import 'package:base/ui/list/list_controller.dart';
import 'package:base/ui/list/list_page.dart';
import 'package:base/ui/login/login_controller.dart';
import 'package:base/ui/login/login_page.dart';
import 'package:base/ui/main/main_controller.dart';
import 'package:get/get.dart';

import '../ui/main/main_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.MAIN,
        page: () => MainPage(),
        binding: BindingsBuilder(() {
          Get.put(MainController());
        })),
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => LoginPage(),
        binding: BindingsBuilder(() {
          Get.put(LoginController());
        })),
    GetPage(
        name: AppRoutes.LIST,
        page: () => ListPage(),
        binding: BindingsBuilder(() {
          Get.put(ListController());
        })),
  ];
}
