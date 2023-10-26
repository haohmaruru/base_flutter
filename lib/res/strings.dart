import 'package:get/get.dart';

import 'app_localizations.dart';

extension StringTranslationExtension on String {
  String get trans => AppLocalizations.of(Get.context!)?.localize(this) ?? this;
}

extension Strings on String {
  /////////////////////////////////// CODE GEN ///////////////////////////////////

  static String get cancel => "cancel";
  static String get all => "all";
  static String get appName => "appName";
  static String get en => "en";
  static String get language => "language";
  static String get vietnamese => "vietnamese";
  static String get content => "content";
  static String get unknownErrorMessage => "unknownErrorMessage";
  static String get both => "both";
  static String get confirm => "confirm";
  static String get vi => "vi";
  static String get defaults => "defaults";
  static String get english => "english";
  static String get theme => "theme";
  static String get noData => "noData";
  static String get changeTheme => "changeTheme";
  static String get close => "close";
  static String get day => "day";
  static String get retry => "retry";
}