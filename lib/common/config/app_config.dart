import 'package:crm_mobile/common/config/config.dart';
import 'package:flutter/foundation.dart';

/// app placement
class AppConfig {
  final AppThemeMode themeMode;

  final String languageCode;

  AppConfig({@required this.themeMode, @required this.languageCode})
      : assert(themeMode != null),
        assert(languageCode != null);

  AppConfig copyWith({
    AppThemeMode themeMode,
    String languageCode,
  }) {
    return AppConfig(
      themeMode: themeMode ?? this.themeMode,
      languageCode: languageCode ?? this.languageCode,
    );
  }
}
