import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_const.dart';
import '../i18n/inner_message.dart';
import '../i18n/language_code.dart';
import '../model/model.dart';
import 'location_util.dart';

/// HTTPユーティリティ
///
/// 改訂履歴
/// ----------------------
class HttpUtil {
  HttpUtil();

  /// ヘッダー情報<br>
  /// return Future<Map<String, String>> ヘッダー情報Map
  ///
  /// 引数
  /// ----------------------
  ///
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/01
  static Future<Map<String, dynamic>> headerInfo(
      String xHttpMethod, String appLanguage, String accessToken, String tenantKey, String locationInfo) async {
    // ヘッダー情報
    final Map<String, dynamic> header = {
      // ログイン認証用アクセストークンキー
      HttpConst.headAuthorization: '${HttpConst.headAuthorizationTypeBearer ?? ''} ${accessToken ?? ''}',
      // 言語コード
      HttpConst.headXHttpLanguageCode: appLanguage,
      // テナントキー
      HttpConst.headXHttpTenantKey: tenantKey,
      // HTTPメソッド
      HttpConst.headXHttpMethod: xHttpMethod,
      // Accept-Encoding
      HttpConst.acceptEncoding: HttpConst.acceptGzip,
    };

    // ユーザが位置情報アクセス権限を許可しない場合は「位置情報ヘッダを付与しない」
    if (locationInfo != '') {
      // 位置情報（緯度、経度）、取得日時
      header[HttpConst.headXHttpGeoLocation] = locationInfo;
    }

    return header;
  }

  /// Dioインスタンスを作成<br>
  /// return Dio Dioインスタンス
  ///
  /// 引数
  /// ----------------------
  /// * [header]    ヘッダーMap
  /// * [option]    オプションMap
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/02
  static Future<Dio> createInstance(Map<String, dynamic> header) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // 接続先URL
    final String connectUrl = preferences.get(PreferenceKey.decallUri) as String;

    // DIOインスタンス
    final dio = Dio(
      BaseOptions(
        // 接続先URL
        baseUrl: connectUrl,
        // ヘッダー
        headers: header,
        // 接続タイムアウト時間
        connectTimeout: HttpConst.connectTimeout,
        // 受信タイムアウト時間
        receiveTimeout: HttpConst.receiveTimeout,
        // リクエストデータタイプ
        contentType: Headers.jsonContentType,
        // レスポンスタイプ
        responseType: ResponseType.json,
      ),
    );

//    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
//      // Hook into the findProxy callback to set the client's proxy.
//      client.findProxy = (url) {
//        return 'PROXY 172.20.15.13:15080';
//      };
//
//      // This is a workaround to allow Charles to receive
//      // SSL payloads when your app is running on Android.
//      client.badCertificateCallback = (X509Certificate cert, String host, int port) => Platform.isAndroid;
//    };
    return dio;
  }

  /// 新規トークン用Dio<br>
  /// return <Dio> 新規トークン用のDioのインスタンス
  ///
  /// 引数
  /// ----------------------
  ///
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/01
  static Future<Dio> createInstanceNewToken() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // Base URL
    final String connectUrl = preferences.getString(PreferenceKey.decallUri);
    // 言語
    final String languageCode = preferences.getString(PreferenceKey.languageCode);
    // テナントキー
    final String tenantKey = preferences.get(PreferenceKey.tenantKey) as String;

    // DIOインスタンス
    final dio = Dio(
      BaseOptions(
        // 接続先URL
        baseUrl: connectUrl,
        // ヘッダー
        headers: {
          // 言語コード
          HttpConst.headXHttpLanguageCode: languageCode,
          // テナントキー
          HttpConst.headXHttpTenantKey: tenantKey,
          // HTTPメソッド
          HttpConst.headXHttpMethod: HttpConst.methodPost,
          // Accept-Encoding
          HttpConst.acceptEncoding: HttpConst.acceptGzip,
        },
        // 接続タイムアウト時間: 10S
        connectTimeout: HttpConst.connectTimeout,
        // 受信タイムアウト時間: 30S
        receiveTimeout: HttpConst.receiveTimeout,
        // リクエストデータタイプ
        contentType: Headers.jsonContentType,
        // レスポンスタイプ
        responseType: ResponseType.json,
      ),
    );

//    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
//      // Hook into the findProxy callback to set the client's proxy.
//      client.findProxy = (url) {
//        return 'PROXY 172.20.15.13:15080';
//      };
//
//      // This is a workaround to allow Charles to receive
//      // SSL payloads when your app is running on Android.
//      client.badCertificateCallback = (X509Certificate cert, String host, int port) => Platform.isAndroid;
//    };
    return dio;
  }

  /// 新規トークンを要求<br>
  /// return int HTTPステータスコード
  ///
  /// 引数
  /// ----------------------
  ///
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/01
  static Future<Response> requestNewToken() async {
    // 新規トークン用DIO
    final dio = await createInstanceNewToken();

    final SharedPreferences preferences = await SharedPreferences.getInstance();

    // 新規トークンパラメータ
    final NewTokenParam newTokenParam = NewTokenParam();
    // JSONオブジェクトへ変換
    json.encode(newTokenParam.toJson());

    Response response;
    try {
      // リクエスト送信
      response = await dio.post(
        AppUrl.url(AppUrl.apiMobileVer1, AppUrl.authNewToken),
        data: newTokenParam,
      );

      // 成功の場合
      if (response.statusCode == HttpConst.statusOk) {
        final tokenData = response.data as Map<String, dynamic>;
        final NewToken newToken = NewToken.fromJson(tokenData);

        // トークンを保存
        final SharedPreferences preferences = await SharedPreferences.getInstance();
//        // アクセストークン
//        preferences.setString(PreferenceKey.accessToken, newToken.accessToken);
//        // アクセストークン有効期限
//        preferences.setInt(PreferenceKey.accessTokenLiveTime, newToken.accessTokenLiveTime);
//        // リフレッシュトークン
//        preferences.setString(PreferenceKey.refreshToken, newToken.refreshToken);
//        // リフレッシュトークン有効期限
//        preferences.setInt(PreferenceKey.refreshTokenLiveTime, newToken.refreshTokenLiveTime);
      }
    } on DioError catch (e) {
      // サーバからの受信有り
      if (e.response != null) {
        response = e.response;
      }
      // サーバからの受信無し
      else {
        response = await handleDioError(e);
      }
    }

    response.data ??= {};
    response.data[MapKey.httpStatusCode] = response.statusCode;
    return response;
  }

  /// GETリクエスト<br>
  /// return dynamic レスポンス
  ///
  /// 引数
  /// ----------------------
  /// * [xHttpMethod]    HTTPメソッド
  /// * [url]    各APIのURL
  /// * [param]    GETパラメータ
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/07/31
  static Future<Response> doGet(String xHttpMethod, String url, Map<String, dynamic> param) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // ignore: unnecessary_parenthesis
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.mobile && connectivityResult != ConnectivityResult.wifi) {
      // 言語
      String languageCode = preferences.getString(PreferenceKey.languageCode);
      if (languageCode == null || languageCode == '') {
        languageCode = LanguageCode.ja;
      }
      if (languageCode != LanguageCode.en && languageCode == LanguageCode.ja) {
        languageCode = LanguageCode.ja;
      }
      return Response(data: {
        MapKey.httpStatusCode: HttpConst.hasNotInternetError,
        MapKey.message: InnerMessage.message[languageCode][InnerMessage.msg9007],
      });
    }

    // 言語(アプリ用)
    final String appLanguage = preferences.getString(PreferenceKey.appLanguage);
    // アクセストークン
    String accessToken = '';
    // テナントキー
    final String tenantKey = preferences.get(PreferenceKey.tenantKey) as String;

    // 現在位置情報
    final String locationInfo = await LocationUtil.getLocationInfo();

    // ヘッダー
    final Map<String, dynamic> header =
        await headerInfo(xHttpMethod, appLanguage, accessToken, tenantKey, locationInfo);

    // インスタンス
    final dio = await createInstance(header);
    // パラメータ
    final String sParam = paramGet(param);
    // URL(パラメータ付き)
    final String urlGet = param.isNotEmpty ? (url + '?' + sParam) : url;

    Response responseFirst;
    try {
      // リクエスト送信
      responseFirst = await dio.get(urlGet);
    } on DioError catch (e) {
      // サーバからの受信有り
      if (e.response != null) {
        responseFirst = e.response;
      }
      // サーバからの受信無し
      else {
        responseFirst = await handleDioError(e);
      }
    }

    // 成功の場合、結果を返す
    if (isStatusSuccess(responseFirst.statusCode)) {
      // HTTPステータスコードをレスポンスのデータに保存
      saveStatusCodeToData(responseFirst);
      return responseFirst;
    }

    // アクセストークン期限切れ 401
    if (isStatusUnauthorized(responseFirst.statusCode)) {
      // 新規トークンを要求
      final Response responseNewToken = await requestNewToken();

      // 新規トークンが成功の場合
      if (isStatusSuccess(responseNewToken.statusCode)) {
        Response responseReRequest;
        try {
          // 新しいアクセストークン
          final String newAccessToken = responseNewToken.data[MapKey.accessToken] as String;
          // HTTPヘッダ
          final Map<String, dynamic> headerReRequest =
              await headerInfo(xHttpMethod, appLanguage, newAccessToken, tenantKey, locationInfo);

          // DIOインスタンス
          final dioReRequest = await createInstance(headerReRequest);

          // 再リクエスト
          responseReRequest = await dioReRequest.get(urlGet);
        } on DioError catch (e) {
          print(e.message);
          // サーバからの受信有り
          if (e.response != null) {
            responseReRequest = e.response;
          }
          // サーバからの受信無し
          else {
            responseReRequest = await handleDioError(e);
          }
        }

        // HTTPステータスコードをレスポンスのデータに保存
        saveStatusCodeToData(responseReRequest);
        return responseReRequest;
      }

      return responseNewToken;
    }

    // HTTPステータスコードをレスポンスのデータに保存
    saveStatusCodeToData(responseFirst);

    return responseFirst;
  }

  /// POSTリクエスト<br>
  /// return <dynamic> レスポンス
  ///
  /// 引数
  /// ----------------------
  /// * [xHttpMethod]    HTTPメソッド
  /// * [url]    各APIのURL
  /// * [param]    リクエストデータ
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/07/31
  static Future<Response> doPost(String xHttpMethod, String url, Map<String, dynamic> param) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // ignore: unnecessary_parenthesis
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.mobile && connectivityResult != ConnectivityResult.wifi) {
      // 言語
      String languageCode = preferences.getString(PreferenceKey.languageCode);
      if (languageCode == null || languageCode == '') {
        languageCode = LanguageCode.ja;
      }
      if (languageCode != LanguageCode.en && languageCode == LanguageCode.ja) {
        languageCode = LanguageCode.ja;
      }
      return Response(data: {
        MapKey.httpStatusCode: HttpConst.hasNotInternetError,
        MapKey.message: InnerMessage.message[languageCode][InnerMessage.msg9007],
      });
    }
    // 言語(アプリ用)
    final String appLanguage = preferences.getString(PreferenceKey.appLanguage);
    // アクセストークン
    String accessToken = '';
    // テナントキー
    final String tenantKey = preferences.get(PreferenceKey.tenantKey) as String;

    // 現在位置情報
    final String locationInfo = await LocationUtil.getLocationInfo();

    // ヘッダー
    final Map<String, dynamic> header =
        await headerInfo(xHttpMethod, appLanguage, accessToken, tenantKey, locationInfo);

    // インスタンス
    final dio = await createInstance(header);

    // リクエストデータ
    final jsonData = json.encode(param);

    Response responseFirst;
    try {
      // リクエスト送信
      responseFirst = await dio.post(
        url,
        data: jsonData,
      );
    } on DioError catch (e) {
      // サーバからの受信有り
      if (e.response != null) {
        responseFirst = e.response;
      }
      // サーバからの受信無し
      else {
        responseFirst = await handleDioError(e);
      }
    }

    // 成功の場合、結果を返す
    if (isStatusSuccess(responseFirst.statusCode)) {
      // HTTPステータスコードをレスポンスのデータに保存
      saveStatusCodeToData(responseFirst);
      return responseFirst;
    }

    // アクセストークン期限切れ 401
    if (isStatusUnauthorized(responseFirst.statusCode)) {
      // 新規トークンを要求
      final Response responseNewToken = await requestNewToken();

      // 新規トークンが成功の場合
      if (isStatusSuccess(responseNewToken.statusCode)) {
        Response responseReRequest;
        try {
          // 新しいアクセストークン
          final String newAccessToken = responseNewToken.data[MapKey.accessToken] as String;
          // HTTPヘッダ
          final Map<String, dynamic> headerReRequest =
              await headerInfo(xHttpMethod, appLanguage, newAccessToken, tenantKey, locationInfo);

          // DIOインスタンス
          final dioReRequest = await createInstance(headerReRequest);

          // 再リクエスト
          responseReRequest = await dioReRequest.post(
            url,
            data: jsonData,
          );
        } on DioError catch (e) {
          print(e.message);
          // サーバからの受信有り
          if (e.response != null) {
            responseReRequest = e.response;
          }
          // サーバからの受信無し
          else {
            responseReRequest = await handleDioError(e);
          }
        }

        // HTTPステータスコードをレスポンスのデータに保存
        saveStatusCodeToData(responseReRequest);
        return responseReRequest;
      }

      return responseNewToken;
    }

    // HTTPステータスコードをレスポンスのデータに保存
    saveStatusCodeToData(responseFirst);

    return responseFirst;
  }

  /// レスポンスのステータスをレスポンスのデータへ保存<br>
  /// return void
  ///
  /// 引数
  /// ----------------------
  /// * [response]    レスポンス
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/14
  static void saveStatusCodeToData(Response response) {
    response.data = response.data == null ? {} : response.data;

    if (response.data == null) {
      response.data = {};
    } else if (!(response.data is Map)) {
      final dynamic data = response.data;
      response.data = {MapKey.message: data};
    }

    response.data[MapKey.httpStatusCode] = response.statusCode == null ? HttpConst.statusDioError : response.statusCode;
  }

  /// GETパラメータを組み合わせ<br>
  /// return String 組み合わせたGETのパラメータ
  ///
  /// 引数
  /// ----------------------
  /// * [param]    GETパラメータ
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/01
  static String paramGet(Map<String, dynamic> param) {
    // パラメータ
    if (param.isEmpty) {
      return '';
    }

    String sParam = '';
    int i = 0;
    // &で連結
    param.forEach((k, v) {
      v = v ?? '';

      if (i < param.length - 1) {
        sParam = sParam + k + '=' + v.toString() + '&';
      } else {
        sParam = sParam + k + '=' + v.toString();
      }
      i++;
    });

    return sParam;
  }

  /// レスポンスが成功かを判断<br>
  /// return bool true: レスポンスが成功 false: レスポンスが失敗
  ///
  /// 引数
  /// ----------------------
  /// * [statusCode]    ステータスコード
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/02
  static bool isStatusSuccess(int statusCode) {
    return statusCode != null &&
        (statusCode == HttpConst.statusOk ||
            statusCode == HttpConst.statusCreated ||
            statusCode == HttpConst.statusNoContent);
  }

  /// データがありませんか(404)を判断<br>
  /// return bool true: データがありません false: データがある
  ///
  /// 引数
  /// ----------------------
  /// * [statusCode]    ステータスコード
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/05/14 lzt-yushanli 新規作成
  static bool isStatusNotFound(int statusCode) {
    return statusCode != null && statusCode == HttpConst.statusNotFound;
  }

  /// 不正なリクエストか(400)を判断<br>
  /// return bool true: 不正なリクエスト false: 正常なリクエスト
  ///
  /// 引数
  /// ----------------------
  /// * [statusCode]    ステータスコード
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/02
  static bool isStatusBadRequest(int statusCode) {
    return statusCode != null && statusCode == HttpConst.statusBadRequest;
  }

  /// アクセス権限がないか(401)を判断<br>
  /// return bool true: アクセス権限がない false: アクセス権限がある
  ///
  /// 引数
  /// ----------------------
  /// * [statusCode]    ステータスコード
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/02
  static bool isStatusUnauthorized(int statusCode) {
    return statusCode != null && statusCode == HttpConst.statusUnauthorized;
  }

  /// 禁止されるか（ユーザが削除されたか）(403)を判断<br>
  /// return bool true: ユーザが削除された false: ユーザが削除されていない
  ///
  /// 引数
  /// ----------------------
  /// * [statusCode]    ステータスコード
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/02
  static bool isStatusForbidden(int statusCode) {
    return statusCode != null && statusCode == HttpConst.statusForbidden;
  }

  /// クライアント内部エラーかを判断<br>
  /// return bool true: クライアント内部エラー false: クライアント内部エラーでない
  ///
  /// 引数
  /// ----------------------
  /// * [statusCode]    ステータスコード
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/02
  static bool isStatusClientError(int statusCode) {
    return statusCode != null && statusCode == HttpConst.statusClientError;
  }

  /// HTTP異常処理<br>
  /// return Response レスポンス
  ///
  /// 引数
  /// ----------------------
  /// * [e]    HTTP異常
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/03
  static Future<Response> handleDioError(DioError e) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // 言語
    String languageCode = preferences.getString(PreferenceKey.languageCode);
    if (languageCode == null || languageCode == '') {
      languageCode = LanguageCode.ja;
    }
    if (languageCode != LanguageCode.en && languageCode == LanguageCode.ja) {
      languageCode = LanguageCode.ja;
    }

    final Map<String, dynamic> dataError = {};

    switch (e.type) {
      // 接続タイムアウト
      case DioErrorType.CONNECT_TIMEOUT:
        dataError[MapKey.message] = InnerMessage.message[languageCode][InnerMessage.msg9001];
        break;
      // キャンセル
      case DioErrorType.CANCEL:
        dataError[MapKey.message] = InnerMessage.message[languageCode][InnerMessage.msg9002];
        break;
      // リクエストタイムアウト
      case DioErrorType.SEND_TIMEOUT:
        dataError[MapKey.message] = InnerMessage.message[languageCode][InnerMessage.msg9003];
        break;
      // レスポンスタイムアウト
      case DioErrorType.RECEIVE_TIMEOUT:
        dataError[MapKey.message] = InnerMessage.message[languageCode][InnerMessage.msg9004];
        break;
      // レスポンスエラー
      case DioErrorType.RESPONSE:
        dataError[MapKey.message] = InnerMessage.message[languageCode][InnerMessage.msg9005];
        break;
      // デフォルトエラー
      case DioErrorType.DEFAULT:
      default:
        dataError[MapKey.message] = InnerMessage.message[languageCode][InnerMessage.msg9006];
        break;
    }

    // DIO関連エラー用 ステータスコード
    dataError[MapKey.httpStatusCode] = HttpConst.statusDioError;

    final Response responseError = Response(data: dataError);
    return responseError;
  }
}
