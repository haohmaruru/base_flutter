import 'package:base/ui/base/base_page.dart';
import 'package:base/ui/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../res/strings.dart';

class LoginPage extends BasePage<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Strings.content.tr),
      ),
    );
  }
}
