import 'package:crm_mobile/common/model/model.dart';

import '../../model/model.dart';

/// 連絡API アブストラクトクラス
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
abstract class IEscalationListApi {
  /// エスカレーション一覧情報取得<br>
  /// return Future<EscalationList> エスカレーション一覧情報
  ///
  /// 引数
  /// ----------------------
  /// * [escalationIds]    エスカレーションId一覧
  ///
  /// 改訂履歴
  /// ----------------------
  Future<EscalationList> getEscalation(List<int> escalationIds);

  /// エスカレーション既読更新<br>
  /// return Future<CommonResponse> 更新結果
  ///
  /// 引数
  /// ----------------------
  /// * [escalationId]        エスカレーションid
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/24  新規作成
  Future<CommonResponse> updateInteractStatus(int escalationId);

  /// エスカレーションId一覧情報取得<br>
  /// return Future<EscalationIds> エスカレーションId一覧情報
  ///
  /// 引数
  /// ----------------------
  /// * [fromRecord]    Xレコードから
  /// * [toRecord]      Yレコードまで
  /// * [onlyUnreadFlg]      エスカレーションの通知既読状態
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/07/14  新規作成
  Future<EscalationIds> getEscalationId(int fromRecord, int toRecord, int onlyUnreadFlg);
}
