import 'package:crm_mobile/screens/escalation_list/model/model.dart';

import '../bloc/bloc.dart';

/// 連絡ロジック アブストラクトクラス
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
abstract class EscalationListUseCases {
  /// エスカレーション取得<br>
  /// return Future<EscalationLoadedState> エスカレーションロード済ステート
  ///
  /// 引数
  /// ----------------------
  /// [escalationListView]    連絡一覧　モデル(画面用)
  /// [event]    連絡一覧取得
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/24  新規作成
  Future<EscalationListLoadedState> getEscalationView(
      EscalationListView escalationListView, EscalationListGetEvent event);

  /// 通知既読更新<br>
  /// return <EscalationListLoadedState> エスカレーションロード済ステート
  ///
  /// 引数
  /// ----------------------
  /// * [escalationListView]    連絡一覧　モデル(画面用)
  /// * [event]                 イベント
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/24  新規作成
  Future<EscalationListLoadedState> updateInteractStatus(
      EscalationListView escalationListView, EscalationListNotifiUpdEvent event);

  /// 連絡一覧の最新情報取得<br>
  /// return Future<EscalationListLoadedState> エスカレーションロード済ステート
  ///
  /// 引数
  /// ----------------------
  /// * [escalationListView]    連絡一覧　モデル(画面用)
  /// * [event]                 イベント
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/24  新規作成
  Future<EscalationListLoadedState> getMoreEscalationView(
      EscalationListView escalationListView, EscalationListGetMoreEvent event);

  /// 連絡一覧のフィルタ<br>
  /// return Future<EscalationListLoadedState> エスカレーションロード済ステート
  ///
  /// 引数
  /// ----------------------
  /// * [escalationListView]    連絡一覧　モデル(画面用)
  /// * [event]                 イベント
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/25  新規作成
  Future<EscalationListLoadedState> filterEscalationView(
      EscalationListView escalationListView, EscalationListFilterEvent event);
}
