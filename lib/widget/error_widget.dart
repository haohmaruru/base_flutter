import 'package:base/res/dimens.dart';
import 'package:base/res/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../res/strings.dart';
import 'button_widget.dart';

class ErrorViewWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  ErrorViewWidget({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.ws),
      alignment: Alignment(0, -0.25.ws),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(message, style: text16.black),
          SizedBox(height: 16.ws),
          RoundButton(
            width: 120.ws,
            text: Strings.retry.trans,
            onPressed: onRetry,
          )
        ],
      ),
    );
  }
}
