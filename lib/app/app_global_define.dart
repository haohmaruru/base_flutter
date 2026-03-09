import 'package:base_flutter/data/model/flavor.dart';
import 'package:base_flutter/l10n/localizations.dart' show AppLocalizations;
import 'package:flutter/material.dart';

late Environment environment;
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

AppLocalizations get language => AppLocalizations.of(rootNavigatorKey.currentState!.context)!;
