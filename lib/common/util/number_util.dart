/// 数字ユーティリティ
///
/// 改訂履歴
/// ----------------------
/// * 2019/07/21 lzt-liangzhao 新規作成
class NumberUtil {
  /// 数字を3桁ごとにカンマ区切り<br>
  /// return String 3桁ごとにカンマ区切りした数字の文字列
  ///
  /// 引数
  /// ----------------------
  /// * [length]    数字の長さ
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/07/21 lzt-liangzhao 新規作成
  static String numberFormat(String length) {
    final List<String> mailListLengthList = [];
    for (int i = 0; i < length.length; i++) {
      mailListLengthList.add(length[i]);
    }

    for (int i = 0; i < mailListLengthList.length / 2; i++) {
      final String temp = mailListLengthList[i];
      mailListLengthList[i] = mailListLengthList[mailListLengthList.length - 1 - i];
      mailListLengthList[mailListLengthList.length - 1 - i] = temp;
    }

    int k = 4;
    for (int i = 0; i < mailListLengthList.length; i++) {
      k--;
      if (k == 0) {
        mailListLengthList.insert(i, ',');
        i++;
        k = 3;
      }
    }

    for (int i = 0; i < mailListLengthList.length / 2; i++) {
      final String temp = mailListLengthList[i];
      mailListLengthList[i] = mailListLengthList[mailListLengthList.length - 1 - i];
      mailListLengthList[mailListLengthList.length - 1 - i] = temp;
    }

    final StringBuffer sb = StringBuffer();
    for (int i = 0; i < mailListLengthList.length; i++) {
      sb.write(mailListLengthList[i]);
    }

    length = sb.toString();
    return length;
  }
}
