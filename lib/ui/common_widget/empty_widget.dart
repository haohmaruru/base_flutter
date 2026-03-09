import 'package:base_flutter/app/app_global_define.dart';
import 'package:base_flutter/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String? message;

  const EmptyWidget({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, -0.25),
      child: Text(message ?? language.noData, style: textTitleAppBar),
    );
  }
}
