import 'package:flutter/cupertino.dart';
import 'package:test_ai/l10n/app_localizations.g.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
