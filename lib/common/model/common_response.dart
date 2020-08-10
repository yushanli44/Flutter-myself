
class CommonResponse {
  /// HTTPステータスコード
  int httpStatusCode;

  /// 処理結果
  String status;

  /// 成功時のメッセージ
  String message;

  /// 処理結果件数
  /// 件数を問わないAPIの場合はデフォルトで[0]を返却します
  int matchCount;

  CommonResponse({this.httpStatusCode, this.status, this.message, this.matchCount});

  CommonResponse.fromJson(Map<String, dynamic> json) {
    httpStatusCode = json['httpStatusCode'] as int;
    status = json['status'] as String;
    message = json['message'] as String;
    matchCount = json['matchCount'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['httpStatusCode'] = httpStatusCode;
    data['status'] = status;
    data['message'] = message;
    data['matchCount'] = matchCount;
    return data;
  }
}
