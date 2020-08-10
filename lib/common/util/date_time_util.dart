import 'package:intl/intl.dart';

/// 日付・時刻・日時ユーティリティ
///
/// 改訂履歴
/// ----------------------
class DateTimeUtil {
  DateTimeUtil();

  /// 日付フォーマット<br>
  /// return String フォーマットした日付
  ///
  /// 引数
  /// ----------------------
  /// * [date]    日付
  ///
  /// 改訂履歴
  /// ----------------------
  static String formatDate(DateTime date) {
    return date.toString().substring(0, 10).replaceAll('-', '/');
  }

  /// 日付フォーマット<br>
  /// return String フォーマットした日付
  ///
  /// 引数
  /// ----------------------
  /// * [date]    日付
  ///
  /// 改訂履歴
  /// ----------------------
  static String formatDateSubstring(DateTime date) {
    return date.toString().substring(0, 10);
  }

  /// 日時フォーマット<br>
  /// return String フォーマットした日時
  ///
  /// 引数
  /// ----------------------
  /// * [dateTime]    日時
  ///
  /// 改訂履歴
  /// ----------------------
  static String formatDateTime(DateTime dateTime) {
    return dateTime.toString().substring(0, 16).replaceAll('-', '/');
  }

  /// 時間から文字まで<br>
  /// return String フォーマットした日時
  ///
  /// 引数
  /// ----------------------
  /// * [dateTime]    日時
  ///
  /// 改訂履歴
  /// ----------------------
  static String toDateString(DateTime dateTime) {
    String formatted;
    final dateFormat = DateFormat('yyyy/MM/dd');
    formatted = dateFormat.format(dateTime);
    return formatted;
  }

  /// 時間から文字まで<br>
  /// return String フォーマットした時間
  ///
  /// 引数
  /// ----------------------
  /// * [dateTime]    日時
  ///
  /// 改訂履歴
  /// ----------------------
  static String toTimeString(DateTime dateTime) {
    String formatted;
    final dateFormat = DateFormat('hh:mm');
    formatted = dateFormat.format(dateTime);
    return formatted;
  }

  /// 日時から文字まで<br>
  /// return String フォーマットした日時
  ///
  /// 引数
  /// ----------------------
  /// * [dateTime]    日時
  ///
  /// 改訂履歴
  /// ----------------------
  static String toDateTimeString(DateTime dateTime) {
    String formatted;
    final dateFormat = DateFormat('yyyy/MM/dd hh:mm');
    formatted = dateFormat.format(dateTime);
    return formatted;
  }

  /// 文字から時間まで<br>
  /// return DateTime フォーマットした日時
  ///
  /// 引数
  /// ----------------------
  /// * [String]    日時
  ///
  /// 改訂履歴
  /// ----------------------
  static DateTime toDate(String dateTime) {
    DateTime formatted;
    final dateFormat = DateFormat('yyyy/MM/dd');
    formatted = dateFormat.parse(dateTime);
    return formatted;
  }

  /// 表示時間をフォーマットする<br>
  /// return DateTime フォーマットした日時
  ///
  /// 引数
  /// ----------------------
  /// * [String]    日時
  ///
  /// 改訂履歴
  /// ----------------------
  static String dateTimeParse(String time) {
    String aftTime = '';
    if (time != null && time.isNotEmpty) {
      if (time.replaceAll(' ', '').length == 4) {
        aftTime = '0' + time.replaceAll(' ', '');
      } else {
        aftTime = time;
      }
    }
    return aftTime;
  }

  /// 日付の比較<br>
  /// return bool date1とdate2が同じかどうか
  ///
  /// 引数
  /// ----------------------
  /// * [DateTime] 比較対象の日付1
  /// * [DateTime] 比較対象の日付2
  ///
  /// 改訂履歴
  /// ----------------------
  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }

  /// 指定した期間内の日付一覧を取得する<br>
  /// return 日付一覧
  ///
  /// 引数
  /// ----------------------
  /// *[DateTime] 期間の開始日
  /// *[DateTime] 期間の終了日
  ///
  /// 改訂履歴
  /// ----------------------
  static Iterable<DateTime> daysInRange(DateTime start, DateTime end) sync* {
    var i = start;
    var offset = start.timeZoneOffset;
    while (i.isBefore(end)) {
      yield i;
      i = i.add(Duration(days: 1));
      final timeZoneDiff = i.timeZoneOffset - offset;
      if (timeZoneDiff.inSeconds != 0) {
        offset = i.timeZoneOffset;
        i = i.subtract(Duration(seconds: timeZoneDiff.inSeconds));
      }
    }
  }

  /// 指定した日付から一か月前の日付を取得する<br>
  /// return 一週間先の日付
  ///
  /// 引数
  /// ----------------------
  /// *[DateTime]日付
  ///
  /// 改訂履歴
  /// ----------------------
  static DateTime previousMonth(DateTime m) {
    var year = m.year;
    var month = m.month;
    if (month == 1) {
      year--;
      month = 12;
    } else {
      month--;
    }
    return DateTime(year, month);
  }

  /// 指定した日付から一か月先の日付を取得する<br>
  /// return 一週間先の日付
  ///
  /// 引数
  /// ----------------------
  /// *[DateTime]日付
  ///
  /// 改訂履歴
  /// ----------------------
  static DateTime nextMonth(DateTime m) {
    var year = m.year;
    var month = m.month;

    if (month == 12) {
      year++;
      month = 1;
    } else {
      month++;
    }
    return DateTime(year, month);
  }

  /// 指定した日付から一週間前の日付を取得する<br>
  /// return 一週間先の日付
  ///
  /// 引数
  /// ----------------------
  /// *[DateTime]日付
  ///
  /// 改訂履歴
  /// ----------------------
  static DateTime previousWeek(DateTime w) {
    return w.subtract(Duration(days: 7));
  }

  /// 指定した日付から一週間先の日付を取得する<br>
  /// return 一週間先の日付
  ///
  /// 引数
  /// ----------------------
  /// *[DateTime]日付
  ///
  /// 改訂履歴
  /// ----------------------
  static DateTime nextWeek(DateTime w) {
    return w.add(Duration(days: 7));
  }
}
