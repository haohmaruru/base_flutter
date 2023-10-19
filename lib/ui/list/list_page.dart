import 'package:base/app/app_controller.dart';
import 'package:base/enum/language_enum.dart';
import 'package:base/enum/theme_enum.dart';
import 'package:base/res/app_localizations.dart';
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
            final controller = Get.find<AppController>();
            if (controller.locale.value ==
                AppLocalizations.supportedLocales[0]) {
              controller.setLanguage(Language.en);
              Get.updateLocale(Locale(Language.en.languageCode));
            } else {
              controller.setLanguage(Language.vi);
              Get.updateLocale(Locale(Language.vi.languageCode));
            }
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
