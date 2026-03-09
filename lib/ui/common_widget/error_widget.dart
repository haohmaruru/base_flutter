import 'package:base_flutter/app/app_global_define.dart';
import 'package:base_flutter/extension/size_extension.dart';
import 'package:base_flutter/theme/text_theme.dart';
import 'package:base_flutter/ui/common_widget/primary_button.dart';
import 'package:flutter/material.dart';

class ErrorViewWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const ErrorViewWidget({super.key, required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.ws),
      alignment: Alignment(0, -0.25.ws),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(message, style: textTitle),
          SizedBox(height: 16.ws),
          PrimaryButton(width: 120.ws, onPressed: onRetry, title: language.retry),
        ],
      ),
    );
  }
}
