import 'package:flutter/material.dart';

typedef LocaleChangeCallback = void Function(Locale locale);


class LocaleController {
  /// 言語が変わる際に呼び出されるメソッド
  LocaleChangeCallback onLocaleChanged;

  /// Internals
  static final LocaleController _localeController = LocaleController._internal();

  factory LocaleController() {
    return _localeController;
  }

  LocaleController._internal();
}

/// 言語切替制御インスタンス
LocaleController localeController = LocaleController();
