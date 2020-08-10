import 'package:crm_mobile/common/app_const.dart';
import 'package:equatable/equatable.dart';

import 'model.dart';

/// 連絡一覧　モデル(画面用)
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListView extends Equatable {
  /// HTTPステータスコード
  final int httpStatusCode;

  /// 処理結果（SUCCESS／WARN／ERROR)
  final String status;

  /// メッセージ
  final String message;

  /// 処理結果件数
  final int matchCount;

  /// 連絡一覧
  final List<EscalationView> escalations;

  /// ロードフラッグ
  final bool isLoading;

  /// 状態フィルター
  final String filterFlag;

  /// フィルター用連絡Viewリスト　画面表示リスト
  final List<EscalationView> escalationListFilterView;

  /// エラー表示フラッグ
  final bool isShowErrorFlg;

  /// 遷移フラグ
  final bool skipToFlg;

  /// タップのエスカレーションID
  final int escalationId;

  /// 以前の検索の数
  final int lastToRecord;

  /// エスカレーションId　一覧
  final List<int> escalationIds;

  final int idFromRecord;

  /// 次の検索データありフラッグ
  final bool hasNext;
  EscalationListView({
    this.httpStatusCode,
    this.status,
    this.message,
    this.matchCount,
    this.escalations = const [],
    this.isLoading,
    this.filterFlag,
    this.escalationListFilterView = const [],
    this.skipToFlg,
    this.escalationId,
    this.lastToRecord,
    this.isShowErrorFlg,
    this.escalationIds = const [],
    this.idFromRecord,
    this.hasNext,
  }) : super([
          httpStatusCode,
          status,
          message,
          matchCount,
          escalations,
          isLoading,
          filterFlag,
          escalationListFilterView,
          skipToFlg,
          escalationId,
          lastToRecord,
          isShowErrorFlg,
          escalationIds,
          idFromRecord,
          hasNext,
        ]);

  factory EscalationListView.fromEntry(
    EscalationList entry,
    int toRecord,
  ) {
    final List<EscalationView> _list = [];
    if (entry.escalations != null) {
      entry.escalations.map((t) {
        _list.add(EscalationView.fromEntry(t));
      }).toList();
    }
    return EscalationListView(
      httpStatusCode: entry.httpStatusCode,
      status: entry.status,
      message: entry.message,
      matchCount: entry.matchCount,
      escalations: _list,
      isLoading: false,
      filterFlag: '',
      escalationListFilterView: _list,
      skipToFlg: false,
      lastToRecord: toRecord,
      isShowErrorFlg: false,
    );
  }

  EscalationListView copyWith({
    int httpStatusCode,
    String status,
    String message,
    int matchCount,
    List<EscalationView> escalations,
    bool isLoading,
    String filterFlag,
    List<EscalationView> escalationListFilterView,
    bool skipToFlg,
    int escalationId,
    int lastToRecord,
    bool isShowErrorFlg,
    List<int> escalationIds,
    int idFromRecord,
    bool hasNext,
  }) {
    return EscalationListView(
      httpStatusCode: httpStatusCode ?? HttpConst.statusOk,
      status: status ?? this.status,
      message: message ?? this.message,
      matchCount: matchCount ?? this.matchCount,
      escalations: escalations ?? this.escalations,
      isLoading: isLoading ?? this.isLoading,
      filterFlag: filterFlag ?? this.filterFlag,
      escalationListFilterView: escalationListFilterView ?? this.escalationListFilterView,
      skipToFlg: skipToFlg ?? this.skipToFlg,
      escalationId: escalationId ?? this.escalationId,
      lastToRecord: lastToRecord ?? this.lastToRecord,
      isShowErrorFlg: isShowErrorFlg ?? false,
      escalationIds: escalationIds ?? this.escalationIds,
      idFromRecord: idFromRecord ?? this.idFromRecord,
      hasNext: hasNext ?? this.hasNext,
    );
  }
}

/// 連絡　モデル(画面用)
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationView extends Equatable {
  /// エスカレーションID
  final int escalationId;

  /// 受付履歴番号
  final int receptHistId;

  /// 代行企業ID
  final int aspId;

  /// 予定開始日時ー予定終了日時
  final String reservePeriod;

  /// 住所
  final String address;

  /// 依頼内容
  final String escalationMsg;

  /// エスカレーション状況
  final String escalationStatus;

  /// エスカレーション状況(画面表示テクスト)
  final String escalationStatusName;

  /// エスカレーション状況(画面表示backgroundColor)
  final String escalationStatusColor;

  /// 開封状態 1:開封
  final int openStatus;

  /// クライアント情報の色
  final String aspColor;

  /// 対応可否
  final int availability;

  /// アサイン
  final int assign;

  EscalationView({
    this.escalationId,
    this.receptHistId,
    this.aspId,
    this.reservePeriod,
    this.address,
    this.escalationMsg,
    this.escalationStatus,
    this.escalationStatusName,
    this.escalationStatusColor,
    this.openStatus,
    this.aspColor,
    this.availability,
    this.assign,
  }) : super([
          escalationId,
          receptHistId,
          aspId,
          reservePeriod,
          address,
          escalationMsg,
          escalationStatus,
          openStatus,
          aspColor,
          availability,
          assign,
        ]);

  factory EscalationView.fromEntry(
    Escalation entry,
  ) {
    String aspColor = '';

    // エスカレーション状況(画面表示テクスト)
    String escalationStatusName = '';
    // エスカレーション状況(画面表示backgroundColor)
    String escalationStatusColor = '';
    return EscalationView(
      escalationId: entry.escalationId,
      receptHistId: entry.receptHistId,
      aspId: entry.aspId,
      reservePeriod: entry.reservePeriod ?? '',
      address: entry.address ?? '',
      escalationMsg: entry.escalationMsg == null ? '' : entry.escalationMsg.replaceAll('\n', '').replaceAll('\r', ''),
      escalationStatus: entry.escalationStatus ?? '',
      escalationStatusName: escalationStatusName.isEmpty ? '    ' : escalationStatusName,
      escalationStatusColor: escalationStatusColor,
      openStatus: entry.openStatus,
      aspColor: aspColor,
      assign: entry.assign,
      availability: entry.availability,
    );
  }
}
