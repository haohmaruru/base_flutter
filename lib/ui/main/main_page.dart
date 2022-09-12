import 'package:base/ui/base/base_page.dart';
import 'package:base/ui/main/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends BasePage<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildContent(context));
  }

  @override
  Widget buildContentView(BuildContext context) {
    return Center(
      child: Text("Main page"),
    );
  }
}
