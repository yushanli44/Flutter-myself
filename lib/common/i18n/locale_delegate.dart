import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'i18n.dart';

class AppMessageLocalDelegate extends LocalizationsDelegate<AppMessage> {
  /// 言語
  final Locale appLocale;

  const AppMessageLocalDelegate(this.appLocale);

  /// アプリ言語を利用
  @override
  Future<AppMessage> load(Locale locale) => AppMessage.load(appLocale);

  @override
  bool isSupported(Locale locale) => locale.languageCode == LanguageCode.ja || locale.languageCode == LanguageCode.en;

  @override
  bool shouldReload(AppMessageLocalDelegate old) => true;
}

class AppCupertinoLocalDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  /// 言語
  final Locale appLocale;

  const AppCupertinoLocalDelegate(this.appLocale);

  /// アプリ言語を利用
  @override
  Future<CupertinoLocalizations> load(Locale locale) => AppCupertinoLocalizations.load(appLocale);

  @override
  bool isSupported(Locale locale) => locale.languageCode == LanguageCode.ja || locale.languageCode == LanguageCode.en;

  @override
  bool shouldReload(AppCupertinoLocalDelegate old) => true;
}

/// 多言語デリゲート(Androidプラットフォーム共通)
///
/// 改訂履歴
/// ----------------------
/// * 2019/09/18 lzt-sunjiashu 新規作成
class AppMaterialLocalizationsDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  /// 言語
  final Locale appLocale;

  const AppMaterialLocalizationsDelegate(this.appLocale);

  @override
  bool isSupported(Locale locale) => kMaterialSupportedLanguages.contains(locale.languageCode);

  static final Map<Locale, Future<MaterialLocalizations>> _loadedTranslations =
      <Locale, Future<MaterialLocalizations>>{};

  @override
  Future<MaterialLocalizations> load(Locale locale) {
    // アプリ言語を利用
    locale = appLocale;
    // 下記は「GlobalMaterialLocalizations.delegate」の「_MaterialLocalizationsDelegate」からコピー
    assert(isSupported(locale));
    return _loadedTranslations.putIfAbsent(locale, () {
      final String localeName = intl.Intl.canonicalizedLocale(locale.toString());
      assert(
        locale.toString() == localeName,
        'Flutter does not support the non-standard locale form $locale (which '
        'might be $localeName',
      );

      intl.DateFormat fullYearFormat;
      intl.DateFormat compactDateFormat;
      intl.DateFormat shortDateFormat;
      intl.DateFormat mediumDateFormat;
      intl.DateFormat longDateFormat;
      intl.DateFormat yearMonthFormat;
      intl.DateFormat shortMonthDayFormat;
      if (intl.DateFormat.localeExists(localeName)) {
        fullYearFormat = intl.DateFormat.y(localeName);
        compactDateFormat = intl.DateFormat.yMd(localeName);
        shortDateFormat = intl.DateFormat.MEd(localeName);
        mediumDateFormat = intl.DateFormat.MMMEd(localeName);
        longDateFormat = intl.DateFormat.yMMMMEEEEd(localeName);
        yearMonthFormat = intl.DateFormat.yMMMM(localeName);
        shortMonthDayFormat = intl.DateFormat.MMMMd(localeName);
      } else if (intl.DateFormat.localeExists(locale.languageCode)) {
        fullYearFormat = intl.DateFormat.y(locale.languageCode);
        compactDateFormat = intl.DateFormat.yMd(locale.languageCode);
        shortDateFormat = intl.DateFormat.MEd(locale.languageCode);
        mediumDateFormat = intl.DateFormat.MMMEd(locale.languageCode);
        longDateFormat = intl.DateFormat.yMMMMEEEEd(locale.languageCode);
        yearMonthFormat = intl.DateFormat.yMMMM(locale.languageCode);
        shortMonthDayFormat = intl.DateFormat.MMMMd(locale.languageCode);
      } else {
        fullYearFormat = intl.DateFormat.y();
        compactDateFormat = intl.DateFormat.yMd();
        shortDateFormat = intl.DateFormat.MEd();
        mediumDateFormat = intl.DateFormat.MMMEd();
        longDateFormat = intl.DateFormat.yMMMMEEEEd();
        yearMonthFormat = intl.DateFormat.yMMMM();
        shortMonthDayFormat = intl.DateFormat.MMMMd();
      }

      intl.NumberFormat decimalFormat;
      intl.NumberFormat twoDigitZeroPaddedFormat;
      if (intl.NumberFormat.localeExists(localeName)) {
        decimalFormat = intl.NumberFormat.decimalPattern(localeName);
        twoDigitZeroPaddedFormat = intl.NumberFormat('00', localeName);
      } else if (intl.NumberFormat.localeExists(locale.languageCode)) {
        decimalFormat = intl.NumberFormat.decimalPattern(locale.languageCode);
        twoDigitZeroPaddedFormat = intl.NumberFormat('00', locale.languageCode);
      } else {
        decimalFormat = intl.NumberFormat.decimalPattern();
        twoDigitZeroPaddedFormat = intl.NumberFormat('00');
      }

      return SynchronousFuture<MaterialLocalizations>(getMaterialTranslation(
        locale,
        fullYearFormat,
        compactDateFormat,
        shortDateFormat,
        mediumDateFormat,
        longDateFormat,
        yearMonthFormat,
        shortMonthDayFormat,
        decimalFormat,
        twoDigitZeroPaddedFormat,
      ));
    });
  }

  @override
  bool shouldReload(AppMaterialLocalizationsDelegate old) => false;
}
