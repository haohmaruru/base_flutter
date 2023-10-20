import 'package:base/app/app_controller.dart';
import 'package:base/enum/language_enum.dart';
import 'package:base/enum/theme_enum.dart';
import 'package:base/res/strings.dart';
import 'package:base/res/theme/text_theme.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/ui/base/base_controller.dart';
import 'package:base/ui/base/base_list_page.dart';
import 'package:base/ui/list/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListPage extends BaseListPage<String, ListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          Strings.all.trans,
          style: text18.black,
        ),
      ),
      backgroundColor: getColor().colorWhite,
      body: buildMainContent(context),
    );
  }

  @override
  Widget buildContentView(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            height: 80,
            width: 400,
            color: getColor().success,
            child: Text(
              Strings.content.trans,
              style: text34.black.bold,
            ),
          ),
          onTap: () {
            if (currentAppTheme == AppTheme.White) {
              Get.find<ThemeManager>().setTheme(AppTheme.Dark);
            } else {
              Get.find<ThemeManager>().setTheme(AppTheme.White);
            }
            // Get.changeTheme(Get.find<ThemeManager>().themeData.value!);
            controller.setState(ViewState.loaded, forceUpdate: true);
          },
        ),
        Container(
          height: 200,
          width: 200,
          color: getColor().success,
        ),
        InkWell(
          onTap: () {
            final appController = Get.find<AppController>();
            if (appController.locale.value?.languageCode ==
                Language.vi.languageCode) {
              appController.setLanguage(Language.en);
            } else {
              appController.setLanguage(Language.vi);
            }
            controller.setState(ViewState.loaded, forceUpdate: true);
          },
          child: Text(
            Strings.language.trans,
            style: text34.bold.black,
          ),
        ),
        Expanded(child: super.buildContentView(context)),
      ],
    );
  }

  @override
  Widget buildItem(BuildContext context, String item, int index) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        item,
        style: text18.black.bold,
      ),
    );
  }
}
