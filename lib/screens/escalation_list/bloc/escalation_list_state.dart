import 'package:crm_mobile/screens/escalation_list/model/model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// 連絡ステート アブストラクトクラス
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
@immutable
abstract class EscalationListState extends Equatable {
  EscalationListState([List props = const []]) : super(props);
}

/// 連絡初期化ステート
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListUninitState extends EscalationListState {
  @override
  String toString() => 'EscalationListUninitState';
}

/// 連絡ロード済ステート
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListLoadedState extends EscalationListState {
  final EscalationListView escalationListView;

  EscalationListLoadedState({this.escalationListView}) : super([escalationListView]);

  @override
  String toString() => 'EscalationListLoadedState';
}
