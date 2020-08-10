/// 件数
///
/// 改訂履歴
/// ----------------------
/// * 2019/08/19 lzt-sunjiashu 新規作成
class CountConst {
  CountConst();

  /// Maximum number: Maximum number of recent references
  static int maxLatestCount = 100;

  /// Maximum number of search: Maximum number of search once
  static int maxSelectCount = 100;

  /// Maximum number: Search history
  static int maxSearchHistoryCount = 20;

  /// Contact/Schedule/Notice
  /// Maximum number: 99
  static int maxCount = 99;

  /// Display message when the maximum number is exceeded
  static String maxCountShowText = '99+';

  /// Minimum number of lines: Message of screen inconsistency
  static int minShowRowCount = 3;

  /// Number of searches: Number of searches once (customer search, matter search, progress search)
  static int maxSearchCount = 10;
}
