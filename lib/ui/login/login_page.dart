import 'package:base/app/app_routes.dart';
import 'package:base/res/dimens.dart';
import 'package:base/res/icons.dart';
import 'package:base/res/strings.dart';
import 'package:base/res/theme/text_theme.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/ui/base/base_page.dart';
import 'package:base/ui/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginPage extends BasePage<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themes.colorWhite,
      body: super.build(context),
    );
  }

  @override
  Widget buildContentView(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10.hs,
          ),
          Container(
            color: Colors.yellow,
            child: SvgPicture.asset(
              AppIcons.logo,
              height: 40.hs,
              width: 40.hs,
            ),
          ),
          SizedBox(
            height: 10.hs,
          ),
          InkWell(
            child: Container(
              color: themes.primary,
              padding: EdgeInsets.all(20.hs),
              child: Text(
                'Click for open list page',
                style: text18.black,
              ),
            ),
            onTap: () {
              Get.toNamed(AppRoutes.LIST);
            },
          ),
          SizedBox(
            height: 20.hs,
          ),
          InkWell(
            child: Container(
              color: themes.primary,
              padding: EdgeInsets.all(20.hs),
              child: Text(
                Strings.login.trans,
                style: text18.black,
              ),
            ),
            onTap: () async {
              await taskProcessing(execute: () async {
                await controller.getProduct();
              });
            },
          ),
          SizedBox(
            height: 20.hs,
          ),
          InkWell(
            onTap: () {
              controller.changeLanguage();
            },
            child: Text(
              Strings.language.trans,
              style: text34.bold.black,
            ),
          ),
          SizedBox(
            height: 20.hs,
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(20.hs),
              color: themes.success,
              child: Text(
                Strings.changeTheme.trans,
                style: text34.black.bold,
              ),
            ),
            onTap: () {
              controller.changeTheme();
            },
          ),
        ],
      ),
    );
  }
}
