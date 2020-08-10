import 'language_code.dart';

class InnerMessage {
  InnerMessage();

  /// msg9001: 接続はタイムアウトしました。
  static const String msg9001 = 'msg9001';

  /// msg9002: リクエストはキャンセルされました。
  static const String msg9002 = 'msg9002';

  /// msg9003: リクエストはタイムアウトしました。
  static const String msg9003 = 'msg9003';

  /// msg9004: レスポンスはタイムアウトしました。
  static const String msg9004 = 'msg9004';

  /// msg9005: レスポンスエラーが発生しました。
  static const String msg9005 = 'msg9005';

  /// msg9006: 未知なエラーが発生しました。
  static const String msg9006 = 'msg9006';

  /// msg9007: ネットワークに接続できません。
  static const String msg9007 = 'msg9007';

  /// メッセージ
  static Map<String, Map<String, String>> message = <String, Map<String, String>>{
    LanguageCode.ja: {
      msg9001: '接続はタイムアウトしました。',
      msg9002: 'リクエストはキャンセルされました。',
      msg9003: 'リクエストはタイムアウトしました。',
      msg9004: 'レスポンスはタイムアウトしました。',
      msg9005: 'レスポンスエラーが発生しました。',
      msg9006: '未知なエラーが発生しました。',
      msg9007: 'ネットワークに接続できません。',
    },
    LanguageCode.en: {
      msg9001: 'Connection timeout',
      msg9002: 'Request was canceled',
      msg9003: 'Request timeout',
      msg9004: 'Response timeout',
      msg9005: 'Response error',
      msg9006: 'Unknown error',
      msg9007: 'Cannot connect to network.',
    },
  };
}
