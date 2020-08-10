import 'dart:math' as math;

import 'package:flutter/material.dart';

class ColorUtil {
  ColorUtil();

  /// HEX文字列からカラーへ変換する<br>
  /// return Color カラー
  ///
  /// 引数
  /// ----------------------
  /// * [hexColor]    HEX文字列
  ///
  static Color getColorFromHex(BuildContext context, String hexColor) {
    if (hexColor == null || hexColor.isEmpty) {
      return Theme.of(context).dividerColor;
    }
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    final col = int.parse(hexColor, radix: 16);
    return Color(col);
  }

  /// 背景に対して読みやすい文字色を選択<br>
  /// return Color 背景に対して読みやすい文字色
  ///
  /// 引数
  /// ----------------------
  /// * [hexColor]    背景色
  ///
  /// 改訂履歴
  /// ----------------------
  static Color getHeadNameColor(BuildContext context, String hexColor) {
    final Color bgColor = getColorFromHex(context, hexColor);

    final num l = 0.2126 * lRGB(bgColor.red) + 0.7152 * lRGB(bgColor.green) + 0.0722 * lRGB(bgColor.blue);
    final num contrastWhite = (1.0 + 0.05) / (l + 0.05); // 1.0=white
    final num contrastBlack = (l + 0.05) / (0.0 + 0.05); // 0.0=black

    return (contrastWhite < contrastBlack) ? Colors.black : Colors.white;
  }

  /// RGB値から相対輝度を得る<br>
  /// return num 相対輝度
  ///
  /// 引数
  /// ----------------------
  /// * [val]    RGB値
  ///
  /// 改訂履歴
  /// ----------------------
  static num lRGB(int val) {
    final num v = val / 255.0;
    return (v <= 0.03928) ? v / 12.92 : math.pow((v + 0.055) / 1.055, 2.4);
  }
}
