import 'dart:ui';

import 'package:flutter/material.dart';

enum AppThemeMode { light, dark }

class AppTheme {
  AppTheme();

  static const double appBarHeight1 = 36.0;

  static const double appBarHeight2 = 56.0;

  static const double tabHeight = 48.0;

  static const double tabWidth = 90.0;

  /// 字体
  static const String _fontFamily = 'Noto Sans JP';

  static const double fontSize1 = 12.0;

  static const double fontSize2 = 14.0;

  static const double fontSize3 = 24.0;

  static const double fontSizeCalendarHeader = 28.0;

  static const double padding1 = 4.0;

  static const double padding2 = 8.0;

  static const double padding3 = 16.0;

  static const double padding4 = 30.0;

  static const double padding5 = 12.0;

  static const double padding6 = 20.0;

  static const double padding7 = 24.0;

  static const double padding8 = 4.5;

  static const double padding9 = 5;

  static const double padding10 = 10;

  static const double padding11 = 14;
  static const double padding12 = 32;

  static const double padding13 = 6;

  static const double padding14 = 2;

  static const double padding15 = 18;

  static const double madding1 = 4.0;

  static const double madding2 = 8.0;

  static const double madding3 = 16.0;

  static const double madding4 = 30.0;

  static const double madding5 = 12.0;

  static const double madding6 = 20.0;

  static const double madding7 = 24.0;

  static const double madding8 = 80.0;

  static const double dividerPadding = 8.0;

  static const double iconTextSpace = 4.0;

  static const double iconSize1 = 16.0;

  static const double iconSize2 = 24.0;

  static const double iconSize3 = 18.0;

  static const double radius1 = 8.0;

  static const double radius2 = 12.0;

  static const double radius3 = 22.0;

  static const double radiusCircular1 = 1.0;
  static const double radiusCircular2 = 2.0;
  static const double radiusCircular3 = 3.0;

  static const double radiusCircular4 = 4.0;

  static const double radiusCircular5 = 5.0;

  static const double radiusCircular6 = 18.0;

  static const double headerFooterHeight = 8.0;

  static const double aspColorWidth = 8.0;

  static const double viewCellHeight = 48.0;
  static const double iconBoxSize = 48.0;

  /// 黄色(固定)
  static Color favoriteColor = const Color(0xFFF2C94C);

  /// 黒(固定)
  static Color textColorBlack = Colors.black; // Colors.black = Color(0xFF000000)

  /// (白)(固定)
  static Color textColorWhite = Colors.white; // Colors.white = Color(0xFFFFFFFF)

  /// snack Bar 的elevation
  static double elevationNum = 24.0;

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: _fontFamily,
      accentColor: Colors.teal[700], // Colors.teal[700] = Color(0xFF00796B)
      scaffoldBackgroundColor: Colors.grey[50], // Colors.grey[50] = Color(0xFFFAFAFA)
      backgroundColor: Colors.grey[50], // Colors.grey[50] = Color(0xFFFAFAFA)
      dividerColor: Colors.grey[400], // Colors.grey[400] = Color(0xFFBDBDBD)
      unselectedWidgetColor: Colors.teal[700], // Colors.teal[700] = Color(0xFF00796B)
      toggleableActiveColor: Colors.teal[700], // Colors.teal[700] = Color(0xFF00796B)
      errorColor: Color(0xFFB00020),
      primaryColorLight: Colors.indigo[100], // Colors.indigo[100] = Color(0xFFC5CAE9)
      primaryColorDark: Colors.indigo[700], // Colors.indigo[700] = Color(0xFF303F9F)
      appBarTheme: AppBarTheme(
        color: Colors.indigo, // Colors.indigo = Color(0xFF3F51B5)
        textTheme: TextTheme(
          headline6: TextStyle(
            color: textColorWhite,
            fontSize: fontSize2,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: textColorWhite,
        unselectedLabelColor: Colors.indigo[100],
      ),
      cardTheme: CardTheme(
        color: Colors.white, // Colors.white = Color(0xFFFFFFFF)
      ),
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: Colors.grey[900], // Colors.grey[900] = Color(0xFF212121)
          fontSize: fontSize1,
        ),
        bodyText1: TextStyle(
          color: Colors.grey[600], // Colors.grey[600] = Color(0xFF757575)
        ),
      ),
      primaryTextTheme: TextTheme(
        headline4: TextStyle(
          fontSize: fontSizeCalendarHeader,
        ),
        caption: TextStyle(
          color: Colors.grey[50].withOpacity(0.9),
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: _fontFamily,
      accentColor: Colors.teal[200], // Colors.teal[200] = Color(0xFF80CBC4)
      scaffoldBackgroundColor: Color(0xFF121212),
      backgroundColor: Color(0xFF121212),
      dividerColor: Color(0x1EFFFFFF), // #FFFFFF Opacity12%
      unselectedWidgetColor: Colors.teal[200], // Colors.teal[200] = Color(0xFF80CBC4)
      toggleableActiveColor: Colors.teal[200], // Colors.teal[200] = Color(0xFF80CBC4)
      errorColor: Color(0xFFCF6679),
      primaryColorLight: Colors.indigo[100], // Colors.indigo[100] = Color(0xFFC5CAE9)
      primaryColorDark: Colors.indigo[700], // Colors.indigo[700] = Color(0xFF303F9F)
      appBarTheme: AppBarTheme(
        color: Colors.indigo, // Colors.indigo = Color(0xFF3F51B5)
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: fontSize2,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.indigo[100],
      ),
      cardTheme: CardTheme(
        color: Color(0xFF2C2C2C),
      ),
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: Colors.white, // Colors.white = Color(0xFFFFFFFF)
          fontSize: fontSize1,
        ),
        bodyText1: TextStyle(
          color: Color.fromARGB(180, 255, 255, 255), // #FFFFFF Opacity87%
        ),
      ),
      primaryTextTheme: TextTheme(
        headline4: TextStyle(
          fontSize: fontSizeCalendarHeader,
        ),
        caption: TextStyle(
          color: Color(0xFF121212).withOpacity(0.9),
        ),
      ),
    );
  }
}
