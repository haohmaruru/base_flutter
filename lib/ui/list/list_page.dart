import 'package:base/res/theme/text_theme.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/ui/base/base_list_page.dart';
import 'package:base/ui/list/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class ListPage extends BaseListPage<String, ListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "list",
          style: text18.black,
        ),
      ),
      backgroundColor: getColor().colorWhite,
      body: buildMainContent(context),
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
