import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppCupertinoLocalizations implements CupertinoLocalizations {
  final materialDelegate = GlobalMaterialLocalizations.delegate;
  final widgetsDelegate = GlobalWidgetsLocalizations.delegate;

  MaterialLocalizations ml;

  Future init(Locale local) async {
    ml = await materialDelegate.load(local);
  }

  @override
  String get alertDialogLabel => ml.alertDialogLabel;

  @override
  String get anteMeridiemAbbreviation => ml.anteMeridiemAbbreviation;

  @override
  String get copyButtonLabel => ml.copyButtonLabel;

  @override
  String get cutButtonLabel => ml.cutButtonLabel;

  @override
  DatePickerDateOrder get datePickerDateOrder => DatePickerDateOrder.mdy;

  @override
  DatePickerDateTimeOrder get datePickerDateTimeOrder => DatePickerDateTimeOrder.date_time_dayPeriod;

  @override
  String datePickerDayOfMonth(int dayIndex) {
    return dayIndex.toString();
  }

  @override
  String datePickerHour(int hour) {
    return hour.toString().padLeft(2, '0');
  }

  @override
  String datePickerHourSemanticsLabel(int hour) {
    return '$hour時';
  }

  @override
  String datePickerMediumDate(DateTime date) {
    return ml.formatMediumDate(date);
  }

  @override
  String datePickerMinute(int minute) {
    return minute.toString().padLeft(2, '0');
  }

  @override
  String datePickerMinuteSemanticsLabel(int minute) {
    return '$minute分';
  }

  @override
  String datePickerMonth(int monthIndex) {
    return '$monthIndex';
  }

  @override
  String datePickerYear(int yearIndex) {
    return yearIndex.toString();
  }

  @override
  String get pasteButtonLabel => ml.pasteButtonLabel;

  @override
  String get postMeridiemAbbreviation => ml.postMeridiemAbbreviation;

  @override
  String get selectAllButtonLabel => ml.selectAllButtonLabel;

  @override
  String timerPickerHour(int hour) {
    return hour.toString().padLeft(2, '0');
  }

  @override
  String timerPickerHourLabel(int hour) {
    return '$hour'.toString().padLeft(2, '0') + '時';
  }

  @override
  String timerPickerMinute(int minute) {
    return minute.toString().padLeft(2, '0');
  }

  @override
  String timerPickerMinuteLabel(int minute) {
    return minute.toString().padLeft(2, '0') + '分';
  }

  @override
  String timerPickerSecond(int second) {
    return second.toString().padLeft(2, '0');
  }

  @override
  String timerPickerSecondLabel(int second) {
    return second.toString().padLeft(2, '0') + '秒';
  }

  static Future<CupertinoLocalizations> load(Locale locale) async {
    final localizations = AppCupertinoLocalizations();
    await localizations.init(locale);
    return SynchronousFuture<CupertinoLocalizations>(localizations);
  }

  @override
  String get todayLabel => '今日';
}
