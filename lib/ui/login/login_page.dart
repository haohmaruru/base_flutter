import 'package:base/app/app_routes.dart';
import 'package:base/res/dimens.dart';
import 'package:base/res/icons.dart';
import 'package:base/res/theme/text_theme.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/ui/base/base_page.dart';
import 'package:base/ui/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../res/strings.dart';

class LoginPage extends BasePage<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getColor().colorWhite,
      body: super.build(context),
    );
  }

  @override
  Widget buildContentView(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 80.hs,
            width: 400.ws,
            color: getColor().success,
            child: Text(
              Strings.theme.trans,
              style: text34.bold.black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.yellow,
            child: SvgPicture.asset(
              AppIcons.chaomung,
              height: 91,
              width: 273,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: SvgPicture.asset(
              AppIcons.dangnhap,
              height: 91,
              width: 273,
            ),
          ),
          InkWell(
            child: Text(
              'Click for open list page',
              style: text18.black,
            ),
            onTap: () {
              Get.toNamed(AppRoutes.LIST);
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
              height: 80,
              width: 400,
              color: getColor().success,
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
