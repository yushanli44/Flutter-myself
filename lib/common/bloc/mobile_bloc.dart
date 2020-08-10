import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crm_mobile/common/config/app_theme.dart';
import 'package:crm_mobile/common/const/preference_key.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:shared_preferences/shared_preferences.dart';

import './bloc.dart';

class MobileBloc extends Bloc<MobileEvent, MobileState> {
  final kiwi.Container injector = kiwi.Container();

  @override
  MobileState get initialState => InitThemeState();

  @override
  Stream<MobileState> mapEventToState(
    MobileEvent event,
  ) async* {
    if (event is InitThemeEvent) {
      // get APP placement
      final SharedPreferences preferences = await SharedPreferences.getInstance();
      final String themeMode = preferences.get(PreferenceKey.themeMode) as String;
      ThemeData themeData = AppTheme.lightTheme();
      if (themeMode != null) {
        if (themeMode.isNotEmpty) {
          if (AppThemeMode.dark.toString() == themeMode) {
            themeData = AppTheme.darkTheme();
          }
        }
      }
      yield ThemeChangedState(
        themeData: themeData,
      );
    }
    if (event is ChangeThemeEvent) {
      final SharedPreferences preferences = await SharedPreferences.getInstance();
      final bool isDarkTheme = event.isDarkTheme;
      ThemeData themeData;
      if (isDarkTheme) {
        themeData = AppTheme.darkTheme();
        preferences.setString(PreferenceKey.themeMode, AppThemeMode.dark.toString());
      } else {
        themeData = AppTheme.lightTheme();
        preferences.setString(PreferenceKey.themeMode, AppThemeMode.light.toString());
      }
      yield ThemeChangedState(
        themeData: themeData,
      );
    }
  }

  // bloc 的异常捕捉
  @override
  void onError(Object error, StackTrace stacktrace) {
    print(error.toString());
    print(stacktrace.toString());
    super.onError(error, stacktrace);
  }
}
