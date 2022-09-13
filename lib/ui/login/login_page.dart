import 'package:base/app/app_routes.dart';
import 'package:base/res/theme/text_theme.dart';
import 'package:base/ui/base/base_page.dart';
import 'package:base/ui/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../res/strings.dart';

class LoginPage extends BasePage<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: super.build(context),
    );
  }

  @override
  Widget buildContentView(BuildContext context) {
    return Center(
      child: InkWell(
        child: Text(
          Strings.content.trans,
          style: text18.black,
        ),
        onTap: () {
          Get.toNamed(AppRoutes.LIST);
        },
      ),
    );
  }
}
