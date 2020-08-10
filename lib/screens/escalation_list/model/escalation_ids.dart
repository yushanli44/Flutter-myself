import 'package:equatable/equatable.dart';

/// エスカレーションid一覧　モデル
///
/// 改訂履歴
/// ----------------------
/// * 2020/07/14  新規作成
class EscalationIds extends Equatable {
  /// HTTPステータスコード
  final int httpStatusCode;

  /// 処理結果（SUCCESS／WARN／ERROR)
  final String status;

  /// メッセージ
  final String message;

  /// 処理結果件数
  final int matchCount;

  /// エスカレーションId　一覧
  final List<int> escalationIds;
  EscalationIds({
    this.httpStatusCode,
    this.status,
    this.message,
    this.matchCount,
    this.escalationIds,
  }) : super([
          httpStatusCode,
          status,
          message,
          matchCount,
          escalationIds,
        ]);

  factory EscalationIds.fromJson(Map<String, dynamic> json) {
    return EscalationIds(
      httpStatusCode: json['httpStatusCode'] as int,
      status: json['status'] as String,
      message: json['message'] as String,
      matchCount: json['matchCount'] as int,
      escalationIds: (json['escalationIds'] as List)?.map((e) => e == null ? null : e as int)?.toList(),
    );
  }
}
