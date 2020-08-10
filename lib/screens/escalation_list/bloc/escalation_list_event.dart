import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// 連絡イベント アブストラクトクラス
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
@immutable
abstract class EscalationListEvent extends Equatable {
  EscalationListEvent([List props = const []]) : super(props);
}

/// 連絡一覧取得　イベント
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListGetEvent extends EscalationListEvent {
  @override
  String toString() => 'EscalationListGetEvent';
}

/// 通知既読更新　イベント
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListNotifiUpdEvent extends EscalationListEvent {
  // エスカレーションid
  final int escalationId;

  EscalationListNotifiUpdEvent({this.escalationId}) : super([escalationId]);
  @override
  String toString() => 'EscalationListNotifiUpdEvent';
}

/// 連絡一覧の最新情報取得　イベント
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListGetMoreEvent extends EscalationListEvent {
  @override
  String toString() => 'EscalationListGetMoreEvent';
}

/// 連絡一覧のフィルタ　イベント
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListFilterEvent extends EscalationListEvent {
  /// 状態フィルター
  final String filterFlag;

  EscalationListFilterEvent({this.filterFlag}) : super([filterFlag]);
  @override
  String toString() => 'EscalationListFilterEvent';
}
