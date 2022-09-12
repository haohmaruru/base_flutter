import 'package:base/ui/base/base_page.dart';
import 'package:base/ui/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      child: Text(Strings.content.trans),
    );
  }
}
