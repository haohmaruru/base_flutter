import 'package:base/ui/list/list_binding.dart';
import 'package:base/ui/list/list_page.dart';
import 'package:base/ui/login/login_binding.dart';
import 'package:base/ui/login/login_page.dart';
import 'package:base/ui/main/main_binding.dart';
import 'package:base/ui/main/main_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.MAIN, page: () => MainPage(), binding: MainBinding()),
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.LIST, page: () => ListPage(), binding: ListBinding()),
  ];
}
