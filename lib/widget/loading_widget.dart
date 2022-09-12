import 'package:base/res/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: 10,
      color: getColor().colorPrimary,
    );
  }
}
