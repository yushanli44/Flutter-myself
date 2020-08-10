import '../model/model.dart';

/// 連絡レポジトリ アブストラクトクラス
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
abstract class IEscalationListRepository {
  /// エスカレーション取得<br>
  /// return <EscalationListView> エスカレーションViewリスト
  ///
  /// 引数
  /// ----------------------
  /// * [fromRecord]    Xレコードから
  /// * [toRecord]      Yレコードまで
  /// * [escalationListView]    エスカレーションViewリスト
  /// * [onlyUnreadFlg]      エスカレーションの通知既読状態
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/24  新規作成]
  Future<EscalationListView> getEscalationView(
      EscalationListView escalationListView, int fromRecord, int toRecord, int onlyUnreadFlg);

  /// 通知既読更新<br>
  /// return <Future<EscalationListView> エスカレーションViewリスト
  ///
  /// 引数
  /// ----------------------
  /// * [escalationId]        エスカレーションid
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/24  新規作成
  Future<EscalationListView> updateInteractStatus(int escalationId);
}
