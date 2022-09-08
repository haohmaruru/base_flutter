#!/usr/bin/env bash

#read *.arb files and gen code into /lib/res/strings.dart file
java -jar ./tools/res_generator.jar type=string path=./lib/res/l10n default_language=en check_missing=true template_file=./lib/res/strings.dart gen_mode=message

#read /lib/res/strings.dart and gen messages files to lib/res/l10n
#flutter pub pub run intl_utils:generate --output-dir=lib/res/l10n --no-use-deferred-loading lib/res/strings.dart lib/res/l10n/intl_*.arb
flutter pub run intl_utils:generate

java -jar ./tools/res_generator.jar type=string path=./lib/res/l10n default_language=en check_missing=false template_file=./lib/res/strings.dart gen_mode=key