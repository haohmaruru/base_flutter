import 'package:base_flutter/extension/size_extension.dart';
import 'package:flutter/material.dart';

const fontFamily = "GoogleSans";

final fontApp = TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.normal);

TextStyle get textTitle => fontApp.copyWith(fontSize: 18.ts);

TextStyle get textContent => fontApp.copyWith(fontSize: 14.ts);

TextStyle get textTitleAppBar => fontApp.copyWith(fontSize: 18.ts);

TextStyle get textTitlePrimaryButton => fontApp.copyWith(fontSize: 16.ts);

extension FontWeightExt on TextStyle {
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);

  TextStyle get normal => copyWith(fontWeight: FontWeight.w400);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get semibold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
}
