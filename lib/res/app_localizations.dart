import 'dart:async';

import 'package:base/enum/language_enum.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'l10n/intl/messages_all.dart';

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'vi'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return await AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

class AppLocalizations {
  static List<Locale> supportedLocales = [
    Locale(Language.vi.languageCode),
    Locale(Language.en.languageCode),
  ];

  AppLocalizations(this.localeName);

  static Future<AppLocalizations> load(Locale locale) {
    print("locale ${locale.languageCode}");
    final String name = locale.countryCode?.isEmpty == true
        ? locale.languageCode
        : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      return AppLocalizations(localeName);
    });
  }

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const delegate = _AppLocalizationsDelegate();

  String localeName;

  String localize(String key, {List<Object>? args}) {
    return Intl.message(key, name: key, args: args, locale: localeName);
  }
}
