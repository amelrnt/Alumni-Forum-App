import 'dart:ui';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale? locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  Map<String, String>? _localizedString;

  Future<bool> load() async {
    String jsonStrings =
        await rootBundle.loadString('i18n/${locale!.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonStrings);
    _localizedString = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String translate(String key) {
    return _localizedString![key]!;
  }

  String localeId() {
    if (locale!.languageCode == AppLocalizationsConst.EN) {
      return "1";
    } else if (locale!.languageCode == AppLocalizationsConst.IN) {
      return "2";
    } else {
      return "1";
    }
  }

  String localeCode() {
    if (locale!.languageCode == AppLocalizationsConst.EN) {
      return AppLocalizationsConst.EN;
    } else if (locale!.languageCode == AppLocalizationsConst.IN) {
      return AppLocalizationsConst.IN;
    } else {
      return AppLocalizationsConst.EN;
    }
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return [AppLocalizationsConst.EN, AppLocalizationsConst.IN]
        .contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = new AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}

class AppLocalizationsConst {
  AppLocalizationsConst._();

  static const EN = "en";
  static const IN = "id";
}
