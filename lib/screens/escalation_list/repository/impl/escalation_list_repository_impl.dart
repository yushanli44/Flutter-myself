import 'package:crm_mobile/common/const/count_const.dart';
import 'package:crm_mobile/common/model/model.dart';
import 'package:crm_mobile/common/util/util.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

import '../../data_provider/api/i_escalation_list_api.dart';
import '../../model/model.dart';
import '../i_escalation_list_repository.dart';

/// 連絡レポジトリ 実装クラス
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListRepositoryImpl extends IEscalationListRepository {
  final kiwi.Container injector = kiwi.Container();

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
  /// * 2020/03/24  新規作成
  @override
  Future<EscalationListView> getEscalationView(
      EscalationListView escalationListView, int fromRecord, int toRecord, int onlyUnreadFlg) async {
    final IEscalationListApi escalationListApi = injector<IEscalationListApi>();
    // APIからエスカレーションId情報を取得する
    final List<int> escalationIds = [];
    if (escalationListView != null &&
        escalationListView.escalationIds != null &&
        escalationListView.escalationIds.isNotEmpty) {
      escalationIds.addAll(escalationListView.escalationIds);
    }
    if (escalationListView.escalationIds == null ||
        escalationListView.escalationIds.isEmpty ||
        escalationListView.idFromRecord == escalationListView.escalationIds.length) {
      final EscalationIds escalationId = await escalationListApi.getEscalationId(fromRecord, toRecord, onlyUnreadFlg);
      if (!HttpUtil.isStatusSuccess(escalationId.httpStatusCode)) {
        return EscalationListView(
          httpStatusCode: escalationId.httpStatusCode,
          message: escalationId.message,
        );
      }
      if (escalationId.escalationIds == null || escalationId.escalationIds.isEmpty) {
        return EscalationListView(
          httpStatusCode: escalationListView.httpStatusCode,
          message: escalationListView.message,
        );
      }

      escalationIds.addAll(escalationId.escalationIds ?? []);
    }

    /// id一覧の設定
    final int idFromRecord = escalationListView.idFromRecord == null ? 0 : escalationListView.idFromRecord;
    final int idToRecord = escalationListView.idFromRecord == null
        ? CountConst.maxSearchCount
        : escalationListView.idFromRecord + CountConst.maxSearchCount;
    final List<int> searchIds =
        escalationIds.sublist(idFromRecord, idToRecord > escalationIds.length ? escalationIds.length : idToRecord);
    // APIからエスカレーション情報を取得する
    final EscalationList escalationList = await escalationListApi.getEscalation(searchIds);

    // エスカレーション情報からエスカレーション情報Viewへ変換する。
    EscalationListView escalationViewList = EscalationListView();
    if (escalationListView.escalationIds.isEmpty ||
        escalationListView.idFromRecord == escalationListView.escalationIds.length) {
      escalationViewList = EscalationListView.fromEntry(escalationList, toRecord);
    } else {
      escalationViewList = EscalationListView.fromEntry(escalationList, escalationListView.lastToRecord);
    }
    bool hasNext = true;
    if (escalationIds.length == (escalationViewList.escalations.length + escalationListView.escalations.length)) {
      final EscalationIds escalationId = await escalationListApi.getEscalationId(escalationViewList.lastToRecord + 1,
          escalationViewList.lastToRecord + CountConst.maxSelectCount, onlyUnreadFlg);
      if (escalationId.escalationIds == null || escalationId.escalationIds.isEmpty) {
        hasNext = false;
      }
    }

    return escalationViewList.copyWith(
      idFromRecord: idToRecord > escalationIds.length ? escalationIds.length : idToRecord,
      escalationIds: escalationIds,
      hasNext: hasNext,
    );
  }

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
  @override
  Future<EscalationListView> updateInteractStatus(int escalationId) async {
    final IEscalationListApi escalationListApi = injector<IEscalationListApi>();

    // 通知既読更新
    final CommonResponse commonResponse = await escalationListApi.updateInteractStatus(escalationId);

    // エスカレーションViewリストに結果を設定
    final EscalationListView escalationListView = EscalationListView(
      httpStatusCode: commonResponse.httpStatusCode,
      message: commonResponse.message,
      status: commonResponse.status,
    );

    return escalationListView;
  }
}
