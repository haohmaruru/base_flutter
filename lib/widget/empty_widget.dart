import 'package:base/res/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../res/strings.dart';

class EmptyWidget extends StatelessWidget {
  final String? message;

  EmptyWidget({this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, -0.25),
      child: Text(message ?? Strings.noData.trans, style: text16.black),
    );
  }
}
