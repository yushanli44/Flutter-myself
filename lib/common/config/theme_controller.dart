import 'package:flutter/material.dart';

typedef ThemeChangeCallback = void Function(ThemeData themeData);

/// Theme switching control
class ThemeController {
  /// Method called when the theme changes
  ThemeChangeCallback onThemeChanged;

  /// Internals
  static final ThemeController _themeController = ThemeController._internal();

  factory ThemeController() {
    return _themeController;
  }

  ThemeController._internal();
}

ThemeController themeController = ThemeController();
