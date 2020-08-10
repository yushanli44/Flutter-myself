class NewToken {
  /// ステータス
  String status;

  /// メッセージ
  String message;

  /// 処理結果件数
  int matchCount;

  /// 認証用に生成されたアクセストークンキー
  String accessToken;

  /// アクセストークンキーの有効期限 (単位：秒)
  int accessTokenLiveTime;

  /// アクセストークンの有効期限が切れた際、新しいアクセストークンをリクエストするためのトークン
  String refreshToken;

  /// リフレッシュトークンキーの有効期限 (単位：秒)
  int refreshTokenLiveTime;

  NewToken(
      {this.status,
      this.message,
      this.matchCount,
      this.accessToken,
      this.accessTokenLiveTime,
      this.refreshToken,
      this.refreshTokenLiveTime});

  NewToken.fromJson(Map<String, dynamic> json) {
    status = json['status'] as String;
    message = json['message'] as String;
    matchCount = json['matchCount'] as int;
    accessToken = json['accessToken'] as String;
    accessTokenLiveTime = json['accessTokenLiveTime'] as int;
    refreshToken = json['refreshToken'] as String;
    refreshTokenLiveTime = json['refreshTokenLiveTime'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['status'] = status;
    data['message'] = message;
    data['matchCount'] = matchCount;
    data['accessToken'] = accessToken;
    data['accessTokenLiveTime'] = accessTokenLiveTime;
    data['refreshToken'] = refreshToken;
    data['refreshTokenLiveTime'] = refreshTokenLiveTime;
    return data;
  }
}

/// 新規トークン用パラメータ
///
/// 改訂履歴
/// ----------------------
/// * 2019/08/03 lzt-sunjiashu 新規作成
class NewTokenParam {
  /// アプリにログインする際に使用するID
  String refreshToken;

  /// 端末ID
  String deviceId;

  /// 端末ID認証PASS
  String deviceSecret;

  /// 端末名
  String deviceName;

  NewTokenParam({this.refreshToken, this.deviceId, this.deviceSecret, this.deviceName});

  NewTokenParam.fromJson(Map<String, dynamic> json) {
    refreshToken = json['refreshToken'] as String;
    deviceId = json['deviceId'] as String;
    deviceSecret = json['deviceSecret'] as String;
    deviceName = json['deviceName'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['refreshToken'] = refreshToken;
    data['deviceId'] = deviceId;
    data['deviceSecret'] = deviceSecret;
    data['deviceName'] = deviceName;
    return data;
  }
}
