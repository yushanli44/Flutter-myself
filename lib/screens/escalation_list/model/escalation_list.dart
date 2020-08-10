import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'escalation_list.g.dart';

/// 連絡一覧　モデル
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
@JsonSerializable()
class EscalationList extends Equatable {
  /// HTTPステータスコード
  final int httpStatusCode;

  /// 処理結果（SUCCESS／WARN／ERROR)
  final String status;

  /// メッセージ
  final String message;

  /// 処理結果件数
  final int matchCount;

  /// 連絡一覧
  final List<Escalation> escalations;
  EscalationList({
    this.httpStatusCode,
    this.status,
    this.message,
    this.matchCount,
    this.escalations,
  }) : super([
          httpStatusCode,
          status,
          message,
          matchCount,
          escalations,
        ]);

  factory EscalationList.fromJson(Map<String, dynamic> json) => _$EscalationListFromJson(json);

  Map<String, dynamic> toJson() => _$EscalationListToJson(this);
}

/// 連絡　モデル
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
@JsonSerializable()
class Escalation extends Equatable {
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

  /// 開封状態
  final int openStatus;

  /// 対応可否
  final int availability;

  /// アサイン
  final int assign;

  Escalation({
    this.escalationId,
    this.receptHistId,
    this.aspId,
    this.reservePeriod,
    this.address,
    this.escalationMsg,
    this.escalationStatus,
    this.openStatus,
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
          availability,
          assign,
        ]);

  factory Escalation.fromJson(Map<String, dynamic> json) => _$EscalationFromJson(json);

  Map<String, dynamic> toJson() => _$EscalationToJson(this);
}
