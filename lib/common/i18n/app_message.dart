import 'dart:async';

import 'package:crm_mobile/common/i18n/app_message_all.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class AppMessage {
  AppMessage(Locale locale) : _localeName = locale.toString();

  final String _localeName;

  static Future<AppMessage> load(Locale locale) {
    return initializeMessages(locale.toString()).then<AppMessage>((Object _) {
      return AppMessage(locale);
    });
  }

  static AppMessage of(BuildContext context) {
    return Localizations.of<AppMessage>(context, AppMessage);
  }

  /// ユーザ名
  String lbl0001() => Intl.message(
        'LblText001',
        name: 'lbl0001',
        desc: 'ユーザ名',
        locale: _localeName,
      );

  /// パスワード
  String lbl0002() => Intl.message(
        'LblText002',
        name: 'lbl0002',
        desc: 'パスワード',
        locale: _localeName,
      );

  /// ユーザ名を保存
  String lbl0003() => Intl.message(
        'LblText003',
        name: 'lbl0003',
        desc: 'ユーザ名を保存',
        locale: _localeName,
      );

  /// ログイン
  String lbl0004() => Intl.message(
        'LblText004',
        name: 'lbl0004',
        desc: 'ログイン',
        locale: _localeName,
      );

  /// 接続設定
  String lbl0005() => Intl.message(
        'LblText005',
        name: 'lbl0005',
        desc: '接続設定',
        locale: _localeName,
      );

  /// 端末の名前
  String lbl0006() => Intl.message(
        'LblText006',
        name: 'lbl0006',
        desc: '端末の名前',
        locale: _localeName,
      );

  /// 名前
  String lbl0007() => Intl.message(
        'LblText007',
        name: 'lbl0007',
        desc: '名前',
        locale: _localeName,
      );

  /// 接続先の選択
  String lbl0008() => Intl.message(
        'LblText008',
        name: 'lbl0008',
        desc: '接続先の選択',
        locale: _localeName,
      );

  /// 接続先
  String lbl0009() => Intl.message(
        'LblText009',
        name: 'lbl0009',
        desc: '接続先',
        locale: _localeName,
      );

  /// 言語
  String lbl0010() => Intl.message(
        'LblText010',
        name: 'lbl0010',
        desc: '言語',
        locale: _localeName,
      );

  /// 接続先の一覧
  String lbl0011() => Intl.message(
        'LblText011',
        name: 'lbl0011',
        desc: '接続先の一覧',
        locale: _localeName,
      );

  /// 接続先を編集
  String lbl0012() => Intl.message(
        'LblText012',
        name: 'lbl0012',
        desc: '接続先を編集',
        locale: _localeName,
      );

  /// 接続先名
  String lbl0013() => Intl.message(
        'LblText013',
        name: 'lbl0013',
        desc: '接続先名',
        locale: _localeName,
      );

  /// デフォルトの言語
  String lbl0014() => Intl.message(
        'LblText014',
        name: 'lbl0014',
        desc: 'デフォルトの言語',
        locale: _localeName,
      );

  /// 接続先を削除
  String lbl0015() => Intl.message(
        'LblText015',
        name: 'lbl0015',
        desc: '接続先を削除',
        locale: _localeName,
      );

  /// 接続先を追加
  String lbl0016() => Intl.message(
        'LblText016',
        name: 'lbl0016',
        desc: '接続先を追加',
        locale: _localeName,
      );

  /// 接続先コード
  String lbl0017() => Intl.message(
        'LblText017',
        name: 'lbl0017',
        desc: '接続先コード',
        locale: _localeName,
      );

  /// 更新
  String lbl0018() => Intl.message(
        'LblText018',
        name: 'lbl0018',
        desc: '更新',
        locale: _localeName,
      );

  /// 終了
  String lbl0019() => Intl.message(
        'LblText019',
        name: 'lbl0019',
        desc: '終了',
        locale: _localeName,
      );

  /// あとで更新
  String lbl0020() => Intl.message(
        'LblText020',
        name: 'lbl0020',
        desc: 'あとで更新',
        locale: _localeName,
      );

  /// TODAY
  String lbl0021() => Intl.message(
        'LblText021',
        name: 'lbl0021',
        desc: 'TODAY',
        locale: _localeName,
      );

  /// VIP顧客
  String lbl0022() => Intl.message(
        'LblText022',
        name: 'lbl0022',
        desc: 'VIP顧客',
        locale: _localeName,
      );

  /// 顧客情報
  String lbl0023() => Intl.message(
        'LblText023',
        name: 'lbl0023',
        desc: '顧客情報',
        locale: _localeName,
      );

  /// 案件情報
  String lbl0024() => Intl.message(
        'LblText024',
        name: 'lbl0024',
        desc: '案件情報',
        locale: _localeName,
      );

  /// 経過情報
  String lbl0025() => Intl.message(
        'LblText025',
        name: 'lbl0025',
        desc: '経過情報',
        locale: _localeName,
      );

  /// 予定
  String lbl0026() => Intl.message(
        'LblText026',
        name: 'lbl0026',
        desc: '予定',
        locale: _localeName,
      );

  /// 通知
  String lbl0027() => Intl.message(
        'LblText027',
        name: 'lbl0027',
        desc: '通知',
        locale: _localeName,
      );

  /// 設定
  String lbl0028() => Intl.message(
        'LblText028',
        name: 'lbl0028',
        desc: '設定',
        locale: _localeName,
      );

  /// ログアウト
  String lbl0029() => Intl.message(
        'LblText029',
        name: 'lbl0029',
        desc: 'ログアウト',
        locale: _localeName,
      );

  /// 連絡
  String lbl0030() => Intl.message(
        'LblText030',
        name: 'lbl0030',
        desc: '連絡',
        locale: _localeName,
      );

  /// お知らせ
  String lbl0031() => Intl.message(
        'LblText031',
        name: 'lbl0031',
        desc: 'お知らせ',
        locale: _localeName,
      );

  /// 詳細確認
  String lbl0032() => Intl.message(
        'LblText032',
        name: 'lbl0032',
        desc: '詳細確認',
        locale: _localeName,
      );

  /// エスカレーション詳細
  String lbl0033() => Intl.message(
        'LblText033',
        name: 'lbl0033',
        desc: 'エスカレーション詳細',
        locale: _localeName,
      );

  /// 対応不可
  String lbl0034() => Intl.message(
        'LblText034',
        name: 'lbl0034',
        desc: '対応不可',
        locale: _localeName,
      );

  /// 対応可
  String lbl0035() => Intl.message(
        'LblText035',
        name: 'lbl0035',
        desc: '対応可',
        locale: _localeName,
      );

  /// 訪問先情報
  String lbl0036() => Intl.message(
        'LblText036',
        name: 'lbl0036',
        desc: '訪問先情報',
        locale: _localeName,
      );

  /// 展開
  String lbl0037() => Intl.message(
        'LblText037',
        name: 'lbl0037',
        desc: '展開',
        locale: _localeName,
      );

  /// 折りたたむ
  String lbl0038() => Intl.message(
        'LblText038',
        name: 'lbl0038',
        desc: '折りたたむ',
        locale: _localeName,
      );

  /// クライアント一覧
  String lbl0039() => Intl.message(
        'LblText039',
        name: 'lbl0039',
        desc: 'クライアント一覧',
        locale: _localeName,
      );

  /// 最近参照した顧客
  String lbl0040() => Intl.message(
        'LblText040',
        name: 'lbl0040',
        desc: '最近参照した顧客',
        locale: _localeName,
      );

  /// 詳細
  String lbl0041() => Intl.message(
        'LblText041',
        name: 'lbl0041',
        desc: '詳細',
        locale: _localeName,
      );

  /// 顧客検索
  String lbl0042() => Intl.message(
        'LblText042',
        name: 'lbl0042',
        desc: '顧客検索',
        locale: _localeName,
      );

  /// 検索結果
  String lbl0043() => Intl.message(
        'LblText043',
        name: 'lbl0043',
        desc: '検索結果',
        locale: _localeName,
      );

  /// 基本情報
  String lbl0044() => Intl.message(
        'LblText044',
        name: 'lbl0044',
        desc: '基本情報',
        locale: _localeName,
      );

  /// 詳細情報
  String lbl0045() => Intl.message(
        'LblText045',
        name: 'lbl0045',
        desc: '詳細情報',
        locale: _localeName,
      );

  /// 連絡先
  String lbl0046() => Intl.message(
        'LblText046',
        name: 'lbl0046',
        desc: '連絡先',
        locale: _localeName,
      );

  /// 追加情報
  String lbl0047() => Intl.message(
        'LblText047',
        name: 'lbl0047',
        desc: '追加情報',
        locale: _localeName,
      );

  /// 付箋
  String lbl0048() => Intl.message(
        'LblText048',
        name: 'lbl0048',
        desc: '付箋',
        locale: _localeName,
      );

  /// 編集できません
  String lbl0049() => Intl.message(
        'LblText049',
        name: 'lbl0049',
        desc: '編集できません',
        locale: _localeName,
      );

  /// 連携ファイル
  String lbl0050() => Intl.message(
        'LblText050',
        name: 'lbl0050',
        desc: '連携ファイル',
        locale: _localeName,
      );

  /// 予定を追加
  String lbl0051() => Intl.message(
        'LblText051',
        name: 'lbl0051',
        desc: '予定を追加',
        locale: _localeName,
      );

  /// 条件リセット
  String lbl0052() => Intl.message(
        'LblText052',
        name: 'lbl0052',
        desc: '条件リセット',
        locale: _localeName,
      );

  /// 検索
  String lbl0053() => Intl.message(
        'LblText053',
        name: 'lbl0053',
        desc: '検索',
        locale: _localeName,
      );

  /// 検索条件
  String lbl0054() => Intl.message(
        'LblText054',
        name: 'lbl0054',
        desc: '検索条件',
        locale: _localeName,
      );

  /// 検索履歴
  String lbl0055() => Intl.message(
        'LblText055',
        name: 'lbl0055',
        desc: '検索履歴',
        locale: _localeName,
      );

  /// 電話番号
  String lbl0056() => Intl.message(
        'LblText056',
        name: 'lbl0056',
        desc: '電話番号',
        locale: _localeName,
      );

  /// 電話番号を追加
  String lbl0057() => Intl.message(
        'LblText057',
        name: 'lbl0057',
        desc: '電話番号を追加',
        locale: _localeName,
      );

  /// メールアドレス
  String lbl0058() => Intl.message(
        'LblText058',
        name: 'lbl0058',
        desc: 'メールアドレス',
        locale: _localeName,
      );

  /// メールアドレスを追加
  String lbl0059() => Intl.message(
        'LblText059',
        name: 'lbl0059',
        desc: 'メールアドレスを追加',
        locale: _localeName,
      );

  /// 郵便番号
  String lbl0060() => Intl.message(
        'LblText060',
        name: 'lbl0060',
        desc: '郵便番号',
        locale: _localeName,
      );

  /// 最近参照した案件
  String lbl0061() => Intl.message(
        'LblText061',
        name: 'lbl0061',
        desc: '最近参照した案件',
        locale: _localeName,
      );

  /// 案件検索
  String lbl0062() => Intl.message(
        'LblText062',
        name: 'lbl0062',
        desc: '案件検索',
        locale: _localeName,
      );

  /// 案件追加情報
  String lbl0063() => Intl.message(
        'LblText063',
        name: 'lbl0063',
        desc: '案件追加情報',
        locale: _localeName,
      );

  /// 経過一覧
  String lbl0064() => Intl.message(
        'LblText064',
        name: 'lbl0064',
        desc: '経過一覧',
        locale: _localeName,
      );

  /// 連絡情報
  String lbl0065() => Intl.message(
        'LblText065',
        name: 'lbl0065',
        desc: '連絡情報',
        locale: _localeName,
      );

  /// 経過追加情報
  String lbl0066() => Intl.message(
        'LblText066',
        name: 'lbl0066',
        desc: '経過追加情報',
        locale: _localeName,
      );

  /// 案件情報／経過情報
  String lbl0067() => Intl.message(
        'LblText067',
        name: 'lbl0067',
        desc: '案件情報／経過情報',
        locale: _localeName,
      );

  /// 訪問状況
  String lbl0068() => Intl.message(
        'LblText068',
        name: 'lbl0068',
        desc: '訪問状況',
        locale: _localeName,
      );

  /// 訪問先名
  String lbl0069() => Intl.message(
        'LblText069',
        name: 'lbl0069',
        desc: '訪問先名',
        locale: _localeName,
      );

  /// 訪問先フリガナ
  String lbl0070() => Intl.message(
        'LblText070',
        name: 'lbl0070',
        desc: '訪問先フリガナ',
        locale: _localeName,
      );

  /// 予定日時(開始)
  String lbl0071() => Intl.message(
        'LblText071',
        name: 'lbl0071',
        desc: '予定日時(開始)',
        locale: _localeName,
      );

  /// 予定日時(終了)
  String lbl0072() => Intl.message(
        'LblText072',
        name: 'lbl0072',
        desc: '予定日時(終了)',
        locale: _localeName,
      );

  /// 都道府県
  String lbl0073() => Intl.message(
        'LblText073',
        name: 'lbl0073',
        desc: '都道府県',
        locale: _localeName,
      );

  /// 市区町村
  String lbl0074() => Intl.message(
        'LblText074',
        name: 'lbl0074',
        desc: '市区町村',
        locale: _localeName,
      );

  /// 住所
  String lbl0075() => Intl.message(
        'LblText075',
        name: 'lbl0075',
        desc: '住所',
        locale: _localeName,
      );

  /// 建物
  String lbl0076() => Intl.message(
        'LblText076',
        name: 'lbl0076',
        desc: '建物',
        locale: _localeName,
      );

  /// 訪問先タイトル
  String lbl0077() => Intl.message(
        'LblText077',
        name: 'lbl0077',
        desc: '訪問先タイトル',
        locale: _localeName,
      );

  /// 備考
  String lbl0078() => Intl.message(
        'LblText078',
        name: 'lbl0078',
        desc: '備考',
        locale: _localeName,
      );

  /// ファイル登録
  String lbl0079() => Intl.message(
        'LblText079',
        name: 'lbl0079',
        desc: 'ファイル登録',
        locale: _localeName,
      );

  /// サイン: あり
  String lbl0080() => Intl.message(
        'LblText080',
        name: 'lbl0080',
        desc: 'サイン: あり',
        locale: _localeName,
      );

  /// サイン: なし
  String lbl0081() => Intl.message(
        'LblText081',
        name: 'lbl0081',
        desc: 'サイン: なし',
        locale: _localeName,
      );

  /// 未回答
  String lbl0082() => Intl.message(
        '未回答',
        name: 'lbl0082',
        desc: '未回答',
        locale: _localeName,
      );

  /// 回答済
  String lbl0083() => Intl.message(
        '回答済',
        name: 'lbl0083',
        desc: '回答済',
        locale: _localeName,
      );

  /// アサイン
  String lbl0084() => Intl.message(
        'アサイン',
        name: 'lbl0084',
        desc: 'アサイン',
        locale: _localeName,
      );

  /// 画像の登録
  String lbl0085() => Intl.message(
        'LblText085',
        name: 'lbl0085',
        desc: '画像の登録',
        locale: _localeName,
      );

  /// タイトル
  String lbl0086() => Intl.message(
        'LblText086',
        name: 'lbl0086',
        desc: 'タイトル',
        locale: _localeName,
      );

  /// 画像のタイトル
  String lbl0087() => Intl.message(
        'LblText087',
        name: 'lbl0087',
        desc: '画像のタイトル',
        locale: _localeName,
      );

  /// 最近参照した経過
  String lbl0088() => Intl.message(
        'LblText088',
        name: 'lbl0088',
        desc: '最近参照した経過',
        locale: _localeName,
      );

  /// 経過検索
  String lbl0089() => Intl.message(
        'LblText089',
        name: 'lbl0089',
        desc: '経過検索',
        locale: _localeName,
      );

  /// ファイル一覧
  String lbl0090() => Intl.message(
        'LblText090',
        name: 'lbl0090',
        desc: 'ファイル一覧',
        locale: _localeName,
      );

  /// メール
  String lbl0091() => Intl.message(
        'LblText091',
        name: 'lbl0091',
        desc: 'メール',
        locale: _localeName,
      );

  /// 登録日時の古い順
  String lbl0092() => Intl.message(
        'LblText092',
        name: 'lbl0092',
        desc: '登録日時の古い順',
        locale: _localeName,
      );

  /// 登録日時の新しい順
  String lbl0093() => Intl.message(
        'LblText093',
        name: 'lbl0093',
        desc: '登録日時の新しい順',
        locale: _localeName,
      );

  /// 更新日時の古い順
  String lbl0094() => Intl.message(
        'LblText094',
        name: 'lbl0094',
        desc: '更新日時の古い順',
        locale: _localeName,
      );

  /// 更新日時の新しい順
  String lbl0095() => Intl.message(
        'LblText095',
        name: 'lbl0095',
        desc: '更新日時の新しい順',
        locale: _localeName,
      );

  /// キャンセル
  String lbl0096() => Intl.message(
        'LblText096',
        name: 'lbl0096',
        desc: 'キャンセル',
        locale: _localeName,
      );

  /// 受付内容
  String lbl0097() => Intl.message(
        'LblText097',
        name: 'lbl0097',
        desc: '受付内容',
        locale: _localeName,
      );

  /// 対応内容
  String lbl0098() => Intl.message(
        'LblText098',
        name: 'lbl0098',
        desc: '対応内容',
        locale: _localeName,
      );

  /// 個人の定型文
  String lbl0099() => Intl.message(
        'LblText099',
        name: 'lbl0099',
        desc: '個人の定型文',
        locale: _localeName,
      );

  /// サイン
  String lbl0100() => Intl.message(
        'LblText100',
        name: 'lbl0100',
        desc: 'サイン',
        locale: _localeName,
      );

  /// デバイスを横向きに
  String lbl0101() => Intl.message(
        'LblText101',
        name: 'lbl0101',
        desc: 'デバイスを横向きに',
        locale: _localeName,
      );

  /// クリア
  String lbl0102() => Intl.message(
        'LblText102',
        name: 'lbl0102',
        desc: 'クリア',
        locale: _localeName,
      );

  /// 保存
  String lbl0103() => Intl.message(
        'LblText103',
        name: 'lbl0103',
        desc: '保存',
        locale: _localeName,
      );

  /// ファイルプレビュー表示
  String lbl0104() => Intl.message(
        'LblText104',
        name: 'lbl0104',
        desc: 'ファイルプレビュー表示',
        locale: _localeName,
      );

  /// メール詳細
  String lbl0105() => Intl.message(
        'LblText105',
        name: 'lbl0105',
        desc: 'メール詳細',
        locale: _localeName,
      );

  /// 返信
  String lbl0106() => Intl.message(
        'LblText106',
        name: 'lbl0106',
        desc: '返信',
        locale: _localeName,
      );

  /// 全員返信
  String lbl0107() => Intl.message(
        'LblText107',
        name: 'lbl0107',
        desc: '全員返信',
        locale: _localeName,
      );

  /// 転送
  String lbl0108() => Intl.message(
        'LblText108',
        name: 'lbl0108',
        desc: '転送',
        locale: _localeName,
      );

  /// From
  String lbl0109() => Intl.message(
        'LblText109',
        name: 'lbl0109',
        desc: 'From',
        locale: _localeName,
      );

  /// To
  String lbl0110() => Intl.message(
        'LblText110',
        name: 'lbl0110',
        desc: 'To',
        locale: _localeName,
      );

  /// Cc
  String lbl0111() => Intl.message(
        'LblText111',
        name: 'lbl0111',
        desc: 'Cc',
        locale: _localeName,
      );

  /// すべて
  String lbl0112() => Intl.message(
        'LblText112',
        name: 'lbl0112',
        desc: 'すべて',
        locale: _localeName,
      );

  /// 本日
  String lbl0113() => Intl.message(
        'LblText113',
        name: 'lbl0113',
        desc: '本日',
        locale: _localeName,
      );

  /// 明日
  String lbl0114() => Intl.message(
        'LblText114',
        name: 'lbl0114',
        desc: '明日',
        locale: _localeName,
      );

  /// 明後日
  String lbl0115() => Intl.message(
        'LblText115',
        name: 'lbl0115',
        desc: '明後日',
        locale: _localeName,
      );

  /// 月曜日
  String lbl0116() => Intl.message(
        'LblText116',
        name: 'lbl0116',
        desc: '月曜日',
        locale: _localeName,
      );

  /// 火曜日
  String lbl0117() => Intl.message(
        'LblText117',
        name: 'lbl0117',
        desc: '火曜日',
        locale: _localeName,
      );

  /// 水曜日
  String lbl0118() => Intl.message(
        'LblText118',
        name: 'lbl0118',
        desc: '水曜日',
        locale: _localeName,
      );

  /// 木曜日
  String lbl0119() => Intl.message(
        'LblText119',
        name: 'lbl0119',
        desc: '木曜日',
        locale: _localeName,
      );

  /// 金曜日
  String lbl0120() => Intl.message(
        'LblText120',
        name: 'lbl0120',
        desc: '金曜日',
        locale: _localeName,
      );

  /// 土曜日
  String lbl0121() => Intl.message(
        'LblText121',
        name: 'lbl0121',
        desc: '土曜日',
        locale: _localeName,
      );

  /// 日曜日
  String lbl0122() => Intl.message(
        'LblText122',
        name: 'lbl0122',
        desc: '日曜日',
        locale: _localeName,
      );

  /// 開始日時
  String lbl0123() => Intl.message(
        'LblText123',
        name: 'lbl0123',
        desc: '開始日時',
        locale: _localeName,
      );

  /// 終了日時
  String lbl0124() => Intl.message(
        'LblText124',
        name: 'lbl0124',
        desc: '終了日時',
        locale: _localeName,
      );

  /// 仮の予定
  String lbl0125() => Intl.message(
        'LblText125',
        name: 'lbl0125',
        desc: '仮の予定',
        locale: _localeName,
      );

  /// 場所
  String lbl0126() => Intl.message(
        'LblText126',
        name: 'lbl0126',
        desc: '場所',
        locale: _localeName,
      );

  /// この予定を削除
  String lbl0127() => Intl.message(
        'LblText127',
        name: 'lbl0127',
        desc: 'この予定を削除',
        locale: _localeName,
      );

  /// メニュー設定
  String lbl0128() => Intl.message(
        'LblText128',
        name: 'lbl0128',
        desc: 'メニュー設定',
        locale: _localeName,
      );

  /// アプリ設定
  String lbl0129() => Intl.message(
        'LblText129',
        name: 'lbl0129',
        desc: 'アプリ設定',
        locale: _localeName,
      );

  /// パスワードの変更
  String lbl0130() => Intl.message(
        'LblText130',
        name: 'lbl0130',
        desc: 'パスワードの変更',
        locale: _localeName,
      );

  /// ヘルプ
  String lbl0131() => Intl.message(
        'LblText131',
        name: 'lbl0131',
        desc: 'ヘルプ',
        locale: _localeName,
      );

  /// このアプリについて
  String lbl0132() => Intl.message(
        'LblText132',
        name: 'lbl0132',
        desc: 'このアプリについて',
        locale: _localeName,
      );

  /// 利用規約
  String lbl0133() => Intl.message(
        'LblText133',
        name: 'lbl0133',
        desc: '利用規約',
        locale: _localeName,
      );

  /// プライバシポリシー
  String lbl0134() => Intl.message(
        'LblText134',
        name: 'lbl0134',
        desc: 'プライバシポリシー',
        locale: _localeName,
      );

  /// ソフトウェアライセンス
  String lbl0135() => Intl.message(
        'LblText135',
        name: 'lbl0135',
        desc: 'ソフトウェアライセンス',
        locale: _localeName,
      );

  /// バージョン：
  String lbl0136() => Intl.message(
        'LblText136',
        name: 'lbl0136',
        desc: 'バージョン：',
        locale: _localeName,
      );

  /// 端末ID：
  String lbl0137() => Intl.message(
        'LblText137',
        name: 'lbl0137',
        desc: '端末ID：',
        locale: _localeName,
      );

  /// 初期設定に戻す
  String lbl0138() => Intl.message(
        'LblText138',
        name: 'lbl0138',
        desc: '初期設定に戻す',
        locale: _localeName,
      );

  /// メニューを追加
  String lbl0139() => Intl.message(
        'LblText139',
        name: 'lbl0139',
        desc: 'メニューを追加',
        locale: _localeName,
      );

  /// 選択可能な「メニュー」
  String lbl0140() => Intl.message(
        'LblText140',
        name: 'lbl0140',
        desc: '選択可能な「メニュー」',
        locale: _localeName,
      );

  /// 現在のパスワード
  String lbl0141() => Intl.message(
        'LblText141',
        name: 'lbl0141',
        desc: '現在のパスワード',
        locale: _localeName,
      );

  /// 現在のパスワードを入力
  String lbl0142() => Intl.message(
        'LblText142',
        name: 'lbl0142',
        desc: '現在のパスワードを入力',
        locale: _localeName,
      );

  /// 新しいパスワード
  String lbl0143() => Intl.message(
        'LblText143',
        name: 'lbl0143',
        desc: '新しいパスワード',
        locale: _localeName,
      );

  /// 新しいパスワードを入力
  String lbl0144() => Intl.message(
        'LblText144',
        name: 'lbl0144',
        desc: '新しいパスワードを入力',
        locale: _localeName,
      );

  /// 新しいパスワードを確認
  String lbl0145() => Intl.message(
        'LblText145',
        name: 'lbl0145',
        desc: '新しいパスワードを確認',
        locale: _localeName,
      );

  /// もう一度新しいパスワードを入力
  String lbl0146() => Intl.message(
        'LblText146',
        name: 'lbl0146',
        desc: 'もう一度新しいパスワードを入力',
        locale: _localeName,
      );

  /// 変更
  String lbl0147() => Intl.message(
        'LblText147',
        name: 'lbl0147',
        desc: '変更',
        locale: _localeName,
      );

  /// 生体認証を使ってログイン
  String lbl0148() => Intl.message(
        'LblText148',
        name: 'lbl0148',
        desc: '生体認証を使ってログイン',
        locale: _localeName,
      );

  /// 追加
  String lbl0149() => Intl.message(
        '追加',
        name: 'lbl0149',
        desc: '追加',
        locale: _localeName,
      );

  /// コピーしました
  String lbl0150() => Intl.message(
        'コピーしました',
        name: 'lbl0150',
        desc: 'コピーしました',
        locale: _localeName,
      );

  /// 全角
  String lbl0151() => Intl.message(
        'LblText151',
        name: 'lbl0151',
        desc: '全角',
        locale: _localeName,
      );

  /// 半角
  String lbl0152() => Intl.message(
        'LblText152',
        name: 'lbl0152',
        desc: '半角',
        locale: _localeName,
      );

  /// 整数
  String lbl0153() => Intl.message(
        'LblText153',
        name: 'lbl0153',
        desc: '整数',
        locale: _localeName,
      );

  /// 小数
  String lbl0154() => Intl.message(
        'LblText154',
        name: 'lbl0154',
        desc: '小数',
        locale: _localeName,
      );

  /// 日付
  String lbl0155() => Intl.message(
        'LblText155',
        name: 'lbl0155',
        desc: '日付',
        locale: _localeName,
      );

  /// 時間
  String lbl0156() => Intl.message(
        'LblText156',
        name: 'lbl0156',
        desc: '時間',
        locale: _localeName,
      );

  /// 日時
  String lbl0157() => Intl.message(
        'LblText157',
        name: 'lbl0157',
        desc: '日時',
        locale: _localeName,
      );

  /// 半角数字
  String lbl0158() => Intl.message(
        'LblText158',
        name: 'lbl0158',
        desc: '半角数字',
        locale: _localeName,
      );

  /// 半角英字
  String lbl0159() => Intl.message(
        'LblText159',
        name: 'lbl0159',
        desc: '半角英字',
        locale: _localeName,
      );

  /// 半角英数字
  String lbl0160() => Intl.message(
        'LblText160',
        name: 'lbl0160',
        desc: '半角英数字',
        locale: _localeName,
      );

  /// フリガナ
  String lbl0161() => Intl.message(
        'LblText161',
        name: 'lbl0161',
        desc: 'フリガナ',
        locale: _localeName,
      );

  /// 新規トークン要求
  String lbl0162() => Intl.message(
        '新規トークン要求',
        name: 'lbl0162',
        desc: '新規トークン要求',
        locale: _localeName,
      );

  /// パスワード変更
  String lbl0163() => Intl.message(
        'パスワード変更',
        name: 'lbl0163',
        desc: 'パスワード変更',
        locale: _localeName,
      );

  /// ユーザ位置情報登録
  String lbl0164() => Intl.message(
        'ユーザ位置情報登録',
        name: 'lbl0164',
        desc: 'ユーザ位置情報登録',
        locale: _localeName,
      );

  /// クライアント項目一覧取得
  String lbl0165() => Intl.message(
        'クライアント項目一覧取得',
        name: 'lbl0165',
        desc: 'クライアント項目一覧取得',
        locale: _localeName,
      );

  /// クライアント画面項目一覧取得
  String lbl0166() => Intl.message(
        'クライアント画面項目一覧取得',
        name: 'lbl0166',
        desc: 'クライアント画面項目一覧取得',
        locale: _localeName,
      );

  /// 検索定義一覧取得
  String lbl0167() => Intl.message(
        '検索定義一覧取得',
        name: 'lbl0167',
        desc: '検索定義一覧取得',
        locale: _localeName,
      );

  /// 検索結果取得
  String lbl0168() => Intl.message(
        '検索結果取得',
        name: 'lbl0168',
        desc: '検索結果取得',
        locale: _localeName,
      );

  /// クライアント選択項目一覧取得
  String lbl0169() => Intl.message(
        'クライアント選択項目一覧取得',
        name: 'lbl0169',
        desc: 'クライアント選択項目一覧取得',
        locale: _localeName,
      );

  /// 追加ブロック項目取得
  String lbl0170() => Intl.message(
        '追加ブロック項目取得',
        name: 'lbl0170',
        desc: '追加ブロック項目取得',
        locale: _localeName,
      );

  /// 一覧取得
  String lbl0171() => Intl.message(
        '一覧取得',
        name: 'lbl0171',
        desc: '一覧取得',
        locale: _localeName,
      );

  /// 対応状況更新
  String lbl0172() => Intl.message(
        '対応状況更新',
        name: 'lbl0172',
        desc: '対応状況更新',
        locale: _localeName,
      );

  /// お知らせ一覧取得
  String lbl0173() => Intl.message(
        'お知らせ一覧取得',
        name: 'lbl0173',
        desc: 'お知らせ一覧取得',
        locale: _localeName,
      );

  /// お知らせ既読更新
  String lbl0174() => Intl.message(
        'お知らせ既読更新',
        name: 'lbl0174',
        desc: 'お知らせ既読更新',
        locale: _localeName,
      );

  /// 顧客一覧取得
  String lbl0175() => Intl.message(
        '顧客一覧取得',
        name: 'lbl0175',
        desc: '顧客一覧取得',
        locale: _localeName,
      );

  /// 顧客詳細取得
  String lbl0176() => Intl.message(
        '顧客詳細取得',
        name: 'lbl0176',
        desc: '顧客詳細取得',
        locale: _localeName,
      );

  /// 顧客詳細更新
  String lbl0177() => Intl.message(
        '顧客詳細更新',
        name: 'lbl0177',
        desc: '顧客詳細更新',
        locale: _localeName,
      );

  /// 案件一覧取得
  String lbl0178() => Intl.message(
        '案件一覧取得',
        name: 'lbl0178',
        desc: '案件一覧取得',
        locale: _localeName,
      );

  /// 案件詳細取得
  String lbl0179() => Intl.message(
        '案件詳細取得',
        name: 'lbl0179',
        desc: '案件詳細取得',
        locale: _localeName,
      );

  /// 案件詳細情報更新
  String lbl0180() => Intl.message(
        '案件詳細情報更新',
        name: 'lbl0180',
        desc: '案件詳細情報更新',
        locale: _localeName,
      );

  /// 経過一覧取得
  String lbl0181() => Intl.message(
        '経過一覧取得',
        name: 'lbl0181',
        desc: '経過一覧取得',
        locale: _localeName,
      );

  /// 経過詳細取得
  String lbl0182() => Intl.message(
        '経過詳細取得',
        name: 'lbl0182',
        desc: '経過詳細取得',
        locale: _localeName,
      );

  /// 経過詳細情報更新
  String lbl0183() => Intl.message(
        '経過詳細情報更新',
        name: 'lbl0183',
        desc: '経過詳細情報更新',
        locale: _localeName,
      );

  /// 訪問先詳細取得
  String lbl0184() => Intl.message(
        '訪問先詳細取得',
        name: 'lbl0184',
        desc: '訪問先詳細取得',
        locale: _localeName,
      );

  /// 訪問先状況更新
  String lbl0185() => Intl.message(
        '訪問先状況更新',
        name: 'lbl0185',
        desc: '訪問先状況更新',
        locale: _localeName,
      );

  /// 訪問先ファイルアップロード
  String lbl0186() => Intl.message(
        '訪問先ファイルアップロード',
        name: 'lbl0186',
        desc: '訪問先ファイルアップロード',
        locale: _localeName,
      );

  /// ファイル取得
  String lbl0187() => Intl.message(
        'ファイル取得',
        name: 'lbl0187',
        desc: 'ファイル取得',
        locale: _localeName,
      );

  /// メール詳細取得
  String lbl0188() => Intl.message(
        'メール詳細取得',
        name: 'lbl0188',
        desc: 'メール詳細取得',
        locale: _localeName,
      );

  /// 定型文一覧取得
  String lbl0189() => Intl.message(
        '定型文一覧取得',
        name: 'lbl0189',
        desc: '定型文一覧取得',
        locale: _localeName,
      );

  /// バージョン確認
  String lbl0190() => Intl.message(
        'バージョン確認',
        name: 'lbl0190',
        desc: 'バージョン確認',
        locale: _localeName,
      );

  /// 住所一覧取得
  String lbl0191() => Intl.message(
        '住所一覧取得',
        name: 'lbl0191',
        desc: '住所一覧取得',
        locale: _localeName,
      );

  /// 予定一覧取得
  String lbl0192() => Intl.message(
        '予定一覧取得',
        name: 'lbl0192',
        desc: '予定一覧取得',
        locale: _localeName,
      );

  /// 予定詳細取得
  String lbl0193() => Intl.message(
        '予定詳細取得',
        name: 'lbl0193',
        desc: '予定詳細取得',
        locale: _localeName,
      );

  /// 予定詳細更新
  String lbl0194() => Intl.message(
        '予定詳細更新',
        name: 'lbl0194',
        desc: '予定詳細更新',
        locale: _localeName,
      );

  /// 基本情報を編集
  String lbl0195() => Intl.message(
        '案件情報を編集',
        name: 'lbl0195',
        desc: '案件情報を編集',
        locale: _localeName,
      );

  /// 予定追加
  String lbl0196() => Intl.message(
        '予定追加',
        name: 'lbl0196',
        desc: '予定追加',
        locale: _localeName,
      );

  /// 案件追加情報を編集
  String lbl0197() => Intl.message(
        '案件追加情報を編集',
        name: 'lbl0197',
        desc: '案件追加情報を編集',
        locale: _localeName,
      );

  /// 経過情報を編集
  String lbl0198() => Intl.message(
        '経過情報を編集',
        name: 'lbl0198',
        desc: '経過情報を編集',
        locale: _localeName,
      );

  /// 連絡情報を編集
  String lbl0199() => Intl.message(
        '連絡情報を編集',
        name: 'lbl0199',
        desc: '連絡情報を編集',
        locale: _localeName,
      );

  /// 経過追加情報を編集
  String lbl0200() => Intl.message(
        '経過追加情報を編集',
        name: 'lbl0200',
        desc: '経過追加情報を編集',
        locale: _localeName,
      );

  /// ログイン認証処理
  String lbl0201() => Intl.message(
        'ログイン認証処理',
        name: 'lbl0201',
        desc: 'ログイン認証処理',
        locale: _localeName,
      );

  /// ダークモード
  String lbl0202() => Intl.message(
        'ダークモード',
        name: 'lbl0202',
        desc: 'ダークモード',
        locale: _localeName,
      );

  /// アサイン解除
  String lbl0203() => Intl.message(
        'アサイン解除',
        name: 'lbl0203',
        desc: 'アサイン解除',
        locale: _localeName,
      );

  /// はい
  String lbl0204() => Intl.message(
        'はい',
        name: 'lbl0204',
        desc: 'はい',
        locale: _localeName,
      );

  /// いいえ
  String lbl0205() => Intl.message(
        'いいえ',
        name: 'lbl0205',
        desc: 'いいえ',
        locale: _localeName,
      );

  /// 未指定
  String lbl0206() => Intl.message(
        'Not specified',
        name: 'lbl0206',
        desc: '未指定',
        locale: _localeName,
      );

  /// オフ
  String lbl0207() => Intl.message(
        'オフ',
        name: 'lbl0207',
        desc: 'オフ',
        locale: _localeName,
      );

  /// オン
  String lbl0208() => Intl.message(
        'オン',
        name: 'lbl0208',
        desc: 'オン',
        locale: _localeName,
      );

  /// 案件を追加
  String lbl0209() => Intl.message(
        '案件を追加',
        name: 'lbl0209',
        desc: '案件を追加',
        locale: _localeName,
      );

  /// 顧客情報を編集
  String lbl0210() => Intl.message(
        '顧客情報を編集',
        name: 'lbl0210',
        desc: '顧客情報を編集',
        locale: _localeName,
      );

  /// 通知一覧取得
  String lbl0211() => Intl.message(
        '通知一覧取得',
        name: 'lbl0211',
        desc: '通知一覧取得',
        locale: _localeName,
      );

  /// 未読のみ
  String lbl0212() => Intl.message(
        '未読のみ',
        name: 'lbl0212',
        desc: '未読のみ',
        locale: _localeName,
      );

  /// エスカレーションのみ
  String lbl0213() => Intl.message(
        'エスカレーションのみ',
        name: 'lbl0213',
        desc: 'エスカレーションのみ',
        locale: _localeName,
      );

  /// 開始時間
  String lbl0214() => Intl.message(
        '開始時間',
        name: 'lbl0214',
        desc: '開始時間',
        locale: _localeName,
      );

  /// 終了時間
  String lbl0215() => Intl.message(
        '終了時間',
        name: 'lbl0215',
        desc: '終了時間',
        locale: _localeName,
      );

  /// ログイン中…
  String lbl0216() => Intl.message(
        'ログイン中…',
        name: 'lbl0216',
        desc: 'ログイン中…',
        locale: _localeName,
      );

  /// クライアント保存中…
  String lbl0217() => Intl.message(
        'クライアント保存中…',
        name: 'lbl0217',
        desc: 'クライアント保存中…',
        locale: _localeName,
      );

  /// クライアント画面項目保存中…
  String lbl0218() => Intl.message(
        'クライアント画面項目保存中…',
        name: 'lbl0218',
        desc: 'クライアント画面項目保存中…',
        locale: _localeName,
      );

  /// クライアント選択項目保存中…
  String lbl0219() => Intl.message(
        'クライアント選択項目保存中…',
        name: 'lbl0219',
        desc: 'クライアント選択項目保存中…',
        locale: _localeName,
      );

  /// 追加ブロック項目保存中…
  String lbl0220() => Intl.message(
        '追加ブロック項目保存中…',
        name: 'lbl0220',
        desc: '追加ブロック項目保存中…',
        locale: _localeName,
      );

  /// 検索定義保存中…
  String lbl0221() => Intl.message(
        '検索定義保存中…',
        name: 'lbl0221',
        desc: '検索定義保存中…',
        locale: _localeName,
      );

  /// 選択可能ステータス保存中…
  String lbl0222() => Intl.message(
        '選択可能ステータス保存中…',
        name: 'lbl0222',
        desc: '選択可能ステータス保存中…',
        locale: _localeName,
      );

  /// デバイストークン登録中…
  String lbl0223() => Intl.message(
        'デバイストークン登録中…',
        name: 'lbl0223',
        desc: 'デバイストークン登録中…',
        locale: _localeName,
      );

  /// すべての経過を表示
  String lbl0224() => Intl.message(
        'すべての経過を表示',
        name: 'lbl0224',
        desc: 'すべての経過を表示',
        locale: _localeName,
      );

  /// すべての案件を表示
  String lbl0225() => Intl.message(
        'すべての案件を表示',
        name: 'lbl0225',
        desc: 'すべての案件を表示',
        locale: _localeName,
      );

  /// 詳細表示
  String lbl0226() => Intl.message(
        '詳細表示',
        name: 'lbl0226',
        desc: '詳細表示',
        locale: _localeName,
      );

  /// キャッシュを削除
  String lbl0227() => Intl.message(
        'キャッシュを削除',
        name: 'lbl0227',
        desc: 'キャッシュを削除',
        locale: _localeName,
      );

  /// 削除
  String lbl0228() => Intl.message(
        '削除',
        name: 'lbl0228',
        desc: '削除',
        locale: _localeName,
      );

  /// 訪問情報
  String lbl0229() => Intl.message(
        '訪問情報',
        name: 'lbl0229',
        desc: '訪問情報',
        locale: _localeName,
      );

  /// 編集
  String lbl0230() => Intl.message(
        '編集',
        name: 'lbl0230',
        desc: '編集',
        locale: _localeName,
      );

  /// 訪問先名カナ
  String lbl0231() => Intl.message(
        '訪問先名カナ',
        name: 'lbl0231',
        desc: '訪問先名カナ',
        locale: _localeName,
      );

  /// アサイン人数
  String lbl0232() => Intl.message(
        'アサイン人数',
        name: 'lbl0232',
        desc: 'アサイン人数',
        locale: _localeName,
      );

  /// 状況
  String lbl0233() => Intl.message(
        '状況',
        name: 'lbl0233',
        desc: '状況',
        locale: _localeName,
      );

  /// さらに表示
  String lbl0234() => Intl.message(
        'さらに表示',
        name: 'lbl0234',
        desc: 'さらに表示',
        locale: _localeName,
      );

  /// 作業の経過
  String lbl0235() => Intl.message(
        '作業の経過',
        name: 'lbl0235',
        desc: '作業の経過',
        locale: _localeName,
      );

  /// モバイル権限登録中…
  String lbl0236() => Intl.message(
        'モバイル権限登録中…',
        name: 'lbl0236',
        desc: 'モバイル権限登録中…',
        locale: _localeName,
      );

  /// アサイン済みの担当者
  String lbl0237() => Intl.message(
        'アサイン済みの担当者',
        name: 'lbl0237',
        desc: 'アサイン済みの担当者',
        locale: _localeName,
      );

  /// (未定)
  String lbl0238() => Intl.message(
        '(未定)',
        name: 'lbl0238',
        desc: '(未定)',
        locale: _localeName,
      );

  /// 表示可能ドロワー登録中…
  String lbl0239() => Intl.message(
        '表示可能ドロワー登録中…',
        name: 'lbl0239',
        desc: '表示可能ドロワー登録中…',
        locale: _localeName,
      );

  /// 表示可能メニュー登録中…
  String lbl0240() => Intl.message(
        '表示可能メニュー登録中…',
        name: 'lbl0240',
        desc: '表示可能メニュー登録中…',
        locale: _localeName,
      );

  /// 選択可能な訪問状況登録中…
  String lbl0241() => Intl.message(
        '選択可能な訪問状況登録中…',
        name: 'lbl0241',
        desc: '選択可能な訪問状況登録中…',
        locale: _localeName,
      );

  /// もっと見る
  String lbl0242() => Intl.message(
        'もっと見る',
        name: 'lbl0242',
        desc: 'もっと見る',
        locale: _localeName,
      );

  ///
  String lbl0243() => Intl.message(
        '',
        name: 'lbl0243',
        desc: '',
        locale: _localeName,
      );

  ///
  String lbl0244() => Intl.message(
        '',
        name: 'lbl0244',
        desc: '',
        locale: _localeName,
      );

  /// 作業の依頼先
  String lbl0245() => Intl.message(
        '作業の依頼先',
        name: 'lbl0245',
        desc: '作業の依頼先',
        locale: _localeName,
      );

  /// すべて表示
  String lbl0246() => Intl.message(
        'すべて表示',
        name: 'lbl0246',
        desc: 'すべて表示',
        locale: _localeName,
      );

  /// 予定詳細表示権限
  String lbl0247() => Intl.message(
        '予定詳細表示権限',
        name: 'lbl0247',
        desc: '予定詳細表示権限',
        locale: _localeName,
      );

  /// ファイル一覧表示権限
  String lbl0248() => Intl.message(
        'ファイル一覧表示権限',
        name: 'lbl0248',
        desc: 'ファイル一覧表示権限',
        locale: _localeName,
      );

  /// 関連メール表示権限
  String lbl0249() => Intl.message(
        '関連メール表示権限',
        name: 'lbl0249',
        desc: '関連メール表示権限',
        locale: _localeName,
      );

  /// 顧客検索権限
  String lbl0250() => Intl.message(
        '顧客検索権限',
        name: 'lbl0250',
        desc: '顧客検索権限',
        locale: _localeName,
      );

  /// 案件検索権限
  String lbl0251() => Intl.message(
        '案件検索権限',
        name: 'lbl0251',
        desc: '案件検索権限',
        locale: _localeName,
      );

  /// 経過検索権限
  String lbl0252() => Intl.message(
        '経過検索権限',
        name: 'lbl0252',
        desc: '経過検索権限',
        locale: _localeName,
      );

  /// エスカレーション表示権限
  String lbl0253() => Intl.message(
        'エスカレーション表示権限',
        name: 'lbl0253',
        desc: 'エスカレーション表示権限',
        locale: _localeName,
      );

  /// エスカレーションの対応状況の更新権限
  String lbl0254() => Intl.message(
        'エスカレーションの対応状況の更新権限',
        name: 'lbl0254',
        desc: 'エスカレーションの対応状況の更新権限',
        locale: _localeName,
      );

  /// 外部リンク開くメニュー表示権限
  String lbl0255() => Intl.message(
        '外部リンク開くメニュー表示権限',
        name: 'lbl0255',
        desc: '外部リンク開くメニュー表示権限',
        locale: _localeName,
      );

  /// お知らせ表示権限
  String lbl0256() => Intl.message(
        'お知らせ表示権限',
        name: 'lbl0256',
        desc: 'お知らせ表示権限',
        locale: _localeName,
      );

  /// お知らせ既読更新権限
  String lbl0257() => Intl.message(
        'お知らせ既読更新権限',
        name: 'lbl0257',
        desc: 'お知らせ既読更新権限',
        locale: _localeName,
      );

  /// 顧客詳細表示権限
  String lbl0258() => Intl.message(
        '顧客詳細表示権限',
        name: 'lbl0258',
        desc: '顧客詳細表示権限',
        locale: _localeName,
      );

  /// 顧客情報カード表示権限
  String lbl0259() => Intl.message(
        '顧客情報カード表示権限',
        name: 'lbl0259',
        desc: '顧客情報カード表示権限',
        locale: _localeName,
      );

  /// 顧客詳細更新権限
  String lbl0260() => Intl.message(
        '顧客詳細更新権限',
        name: 'lbl0260',
        desc: '顧客詳細更新権限',
        locale: _localeName,
      );

  /// お気に入り顧客表示権限
  String lbl0261() => Intl.message(
        'お気に入り顧客表示権限',
        name: 'lbl0261',
        desc: 'お気に入り顧客表示権限',
        locale: _localeName,
      );

  /// お気に入り顧客更新権限
  String lbl0262() => Intl.message(
        'お気に入り顧客更新権限',
        name: 'lbl0262',
        desc: 'お気に入り顧客更新権限',
        locale: _localeName,
      );

  /// 案件情報カード表示権限
  String lbl0263() => Intl.message(
        '案件情報カード表示権限',
        name: 'lbl0263',
        desc: '案件情報カード表示権限',
        locale: _localeName,
      );

  /// 案件詳細表示権限
  String lbl0264() => Intl.message(
        '案件詳細表示権限',
        name: 'lbl0264',
        desc: '案件詳細表示権限',
        locale: _localeName,
      );

  /// 案件詳細更新権限
  String lbl0265() => Intl.message(
        '案件詳細更新権限',
        name: 'lbl0265',
        desc: '案件詳細更新権限',
        locale: _localeName,
      );

  /// 案件情報登録権限
  String lbl0266() => Intl.message(
        '案件情報登録権限',
        name: 'lbl0266',
        desc: '案件情報登録権限',
        locale: _localeName,
      );

  /// 経過情報登録権限
  String lbl0267() => Intl.message(
        '経過情報登録権限',
        name: 'lbl0267',
        desc: '経過情報登録権限',
        locale: _localeName,
      );

  /// 経過情報カード表示権限
  String lbl0268() => Intl.message(
        '経過情報カード表示権限',
        name: 'lbl0268',
        desc: '経過情報カード表示権限',
        locale: _localeName,
      );

  /// 経過詳細情報表示権限
  String lbl0269() => Intl.message(
        '経過詳細情報表示権限',
        name: 'lbl0269',
        desc: '経過詳細情報表示権限',
        locale: _localeName,
      );

  /// 経過情報更新権限
  String lbl0270() => Intl.message(
        '経過情報更新権限',
        name: 'lbl0270',
        desc: '経過情報更新権限',
        locale: _localeName,
      );

  /// 訪問詳細情報表示権限
  String lbl0271() => Intl.message(
        '訪問詳細情報表示権限',
        name: 'lbl0271',
        desc: '訪問詳細情報表示権限',
        locale: _localeName,
      );

  /// 訪問情報更新権限
  String lbl0272() => Intl.message(
        '訪問情報更新権限',
        name: 'lbl0272',
        desc: '訪問情報更新権限',
        locale: _localeName,
      );

  /// 作業進捗表示権限
  String lbl0273() => Intl.message(
        '作業進捗表示権限',
        name: 'lbl0273',
        desc: '作業進捗表示権限',
        locale: _localeName,
      );

  /// 作業進捗更新権限
  String lbl0274() => Intl.message(
        '作業進捗更新権限',
        name: 'lbl0274',
        desc: '作業進捗更新権限',
        locale: _localeName,
      );

  /// 定型文表示権限
  String lbl0275() => Intl.message(
        '定型文表示権限',
        name: 'lbl0275',
        desc: '定型文表示権限',
        locale: _localeName,
      );

  /// 予定一覧表示権限
  String lbl0276() => Intl.message(
        '予定一覧表示権限',
        name: 'lbl0276',
        desc: '予定一覧表示権限',
        locale: _localeName,
      );

  /// 予定詳細登録権限
  String lbl0277() => Intl.message(
        '予定詳細登録権限',
        name: 'lbl0277',
        desc: '予定詳細登録権限',
        locale: _localeName,
      );

  /// 予定詳細更新権限
  String lbl0278() => Intl.message(
        '予定詳細更新権限',
        name: 'lbl0278',
        desc: '予定詳細更新権限',
        locale: _localeName,
      );

  /// 予定詳細削除権限
  String lbl0279() => Intl.message(
        '予定詳細削除権限',
        name: 'lbl0279',
        desc: '予定詳細削除権限',
        locale: _localeName,
      );

  /// 通知一覧表示権限
  String lbl0280() => Intl.message(
        '通知一覧表示権限',
        name: 'lbl0280',
        desc: '通知一覧表示権限',
        locale: _localeName,
      );

  /// 通知既読更新権限
  String lbl0281() => Intl.message(
        '通知既読更新権限',
        name: 'lbl0281',
        desc: '通知既読更新権限',
        locale: _localeName,
      );

  /// 作業の進捗
  String lbl0282() => Intl.message(
        '作業の進捗',
        name: 'lbl0282',
        desc: '作業の進捗',
        locale: _localeName,
      );

  /// 担当者名
  String lbl0283() => Intl.message(
        '担当者名',
        name: 'lbl0283',
        desc: '担当者名',
        locale: _localeName,
      );

  /// アサイン登録
  String lbl0284() => Intl.message(
        'アサイン登録',
        name: 'lbl0284',
        desc: 'アサイン登録',
        locale: _localeName,
      );

  /// 担当者
  String lbl0285() => Intl.message(
        '担当者',
        name: 'lbl0285',
        desc: '担当者',
        locale: _localeName,
      );

  /// 詳細内容
  String lbl0286() => Intl.message(
        '詳細内容',
        name: 'lbl0286',
        desc: '詳細内容',
        locale: _localeName,
      );

  /// 重ねて表示
  String lbl0287() => Intl.message(
        '重ねて表示',
        name: 'lbl0287',
        desc: '重ねて表示',
        locale: _localeName,
      );

  /// $var0は正常に終了しました。
  String msg0001(String var0) => Intl.message(
        '$var0は正常に終了しました。Test',
        name: 'msg0001',
        desc: '$var0は正常に終了しました。',
        args: [var0],
        locale: _localeName,
      );

  /// $var0は失敗しました。
  String msg0002(String var0) => Intl.message(
        '$var0は失敗しました。',
        name: 'msg0002',
        desc: '$var0は失敗しました。',
        args: [var0],
        locale: _localeName,
      );

  /// $var0にエラーが発生しました。
  String msg0003(String var0) => Intl.message(
        '$var0にエラーが発生しました。',
        name: 'msg0003',
        desc: '$var0にエラーが発生しました。',
        args: [var0],
        locale: _localeName,
      );

  /// ログインに失敗しました。
  String msg0004() => Intl.message(
        'ログインに失敗しました。',
        name: 'msg0004',
        desc: 'ログインに失敗しました。',
        locale: _localeName,
      );

  /// ユーザとパスワードをご確認ください。
  String msg0005() => Intl.message(
        'ユーザとパスワードをご確認ください。',
        name: 'msg0005',
        desc: 'ユーザとパスワードをご確認ください。',
        locale: _localeName,
      );

  /// 接続先をご確認ください。
  String msg0006() => Intl.message(
        '接続先をご確認ください。',
        name: 'msg0006',
        desc: '接続先をご確認ください。',
        locale: _localeName,
      );

  /// 新しいアプリが公開されています。
  String msg0007() => Intl.message(
        '新しいアプリが公開されています。',
        name: 'msg0007',
        desc: '新しいアプリが公開されています。',
        locale: _localeName,
      );

  /// アプリを更新してください
  String msg0008() => Intl.message(
        'アプリを更新してください',
        name: 'msg0008',
        desc: 'アプリを更新してください',
        locale: _localeName,
      );

  /// Copyright© 2020 GiG Works x IT Inc.
  String msg0009() => Intl.message(
        '© 2020 GiG Works x IT Inc.  ',
        name: 'msg0009',
        desc: '© 2020 GiG Works x IT Inc.  ',
        locale: _localeName,
      );

  /// $該当 var0件
  String msg0010(String var0) => Intl.message(
        '該当 $var0件',
        name: 'msg0010',
        desc: '該当 $var0件',
        args: [var0],
        locale: _localeName,
      );

  /// ファイル($var0)
  String msg0011(String var0) => Intl.message(
        'ファイル($var0)',
        name: 'msg0011',
        desc: 'ファイル($var0)',
        args: [var0],
        locale: _localeName,
      );

  /// メール($var0)
  String msg0012(String var0) => Intl.message(
        'メール($var0)',
        name: 'msg0012',
        desc: 'メール($var0)',
        args: [var0],
        locale: _localeName,
      );

  /// 画像ファイル($var0)
  String msg0013(String var0) => Intl.message(
        '画像ファイル($var0)',
        name: 'msg0013',
        desc: '画像ファイル($var0)',
        args: [var0],
        locale: _localeName,
      );

  /// $var0件
  String msg0014(String var0) => Intl.message(
        '$var0件',
        name: 'msg0014',
        desc: '$var0件',
        args: [var0],
        locale: _localeName,
      );

  /// メニューに表示する項目を選択することができます。設定できるアイテムは5つまでです。
  String msg0015() => Intl.message(
        'メニューに表示する項目を選択することができます。設定できるアイテムは5つまでです。',
        name: 'msg0015',
        desc: 'メニューに表示する項目を選択することができます。設定できるアイテムは5つまでです。',
        locale: _localeName,
      );

  /// 最初のアイテムはログイン直後に表示します。
  String msg0016() => Intl.message(
        '最初のアイテムはログイン直後に表示します。',
        name: 'msg0016',
        desc: '最初のアイテムはログイン直後に表示します。',
        locale: _localeName,
      );

  /// $var0は入力必須です。
  String msg0017(String var0) => Intl.message(
        '$var0は入力必須です。',
        name: 'msg0017',
        desc: '$var0は入力必須です。',
        args: [var0],
        locale: _localeName,
      );

  /// $var0を$var1で入力してください。
  String msg0018(String var0, String var1) => Intl.message(
        '$var0を$var1で入力してください。',
        name: 'msg0018',
        desc: '$var0を$var1で入力してください。',
        args: [var0, var1],
        locale: _localeName,
      );

  /// $var0の桁数は最大桁数を超えています。
  String msg0019(String var0) => Intl.message(
        '$var0の桁数は最大桁数を超えています。',
        name: 'msg0019',
        desc: '$var0の桁数は最大桁数を超えています。',
        args: [var0],
        locale: _localeName,
      );

  /// $var0は選択必須です。
  String msg0020(String var0) => Intl.message(
        '$var0は選択必須です。',
        name: 'msg0020',
        desc: '$var0は選択必須です。',
        args: [var0],
        locale: _localeName,
      );

  /// この接続先は既に存在します。
  String msg0021() => Intl.message(
        'この接続先は既に存在します。',
        name: 'msg0021',
        desc: 'この接続先は既に存在します。',
        locale: _localeName,
      );

  /// 新しいパスワードと確認用新しいパスワードは一致していません。
  String msg0022() => Intl.message(
        '新しいパスワードと確認用新しいパスワードは一致していません。',
        name: 'msg0022',
        desc: '新しいパスワードと確認用新しいパスワードは一致していません。',
        locale: _localeName,
      );

  /// 選択値の不整合などで表示ができなかった項目があります。ログインしなおすか、カードに表示した元の情報を確認してください。
  String msg0023() => Intl.message(
        '選択値の不整合などで表示ができなかった項目があります。ログインしなおすか、カードに表示した元の情報を確認してください。',
        name: 'msg0023',
        desc: '選択値の不整合などで表示ができなかった項目があります。ログインしなおすか、カードに表示した元の情報を確認してください。',
        locale: _localeName,
      );

  /// 顧客案件の経過(#var0件中#var1件)
  String msg0024(String var0, String var1) => Intl.message(
        '顧客案件の経過(#1件中#0件)',
        name: 'msg0024',
        desc: '顧客案件の経過(#1件中#0件)',
        args: [var0, var1],
        locale: _localeName,
      );

  /// この予定を削除しますか？
  String msg0025() => Intl.message(
        'この予定を削除しますか？',
        name: 'msg0025',
        desc: 'この予定を削除しますか？',
        locale: _localeName,
      );

  /// ログアウトしますか?
  String msg0026() => Intl.message(
        'ログアウトしますか?',
        name: 'msg0026',
        desc: 'ログアウトしますか?',
        locale: _localeName,
      );

  /// 未知なエラーが発生しました。
  String msg0027() => Intl.message(
        '未知なエラーが発生しました。',
        name: 'msg0027',
        desc: '未知なエラーが発生しました。',
        locale: _localeName,
      );

  /// 接続先を変更すると、参照履歴および項目情報を削除しますが、よろしいですか？
  String msg0028() => Intl.message(
        '接続先を変更すると、参照履歴および項目情報を削除しますが、よろしいですか？',
        name: 'msg0028',
        desc: '接続先を変更すると、参照履歴および項目情報を削除しますが、よろしいですか？',
        locale: _localeName,
      );

  /// 項目情報は、次回のログインで取得します。
  String msg0029() => Intl.message(
        '項目情報は、次回のログインで取得します。',
        name: 'msg0029',
        desc: '項目情報は、次回のログインで取得します。',
        locale: _localeName,
      );

  /// $var0桁以内で入力
  String msg0030(String var0) => Intl.message(
        '#0桁以内で入力',
        name: 'msg0030',
        desc: '#0桁以内で入力',
        args: [var0],
        locale: _localeName,
      );

  /// $var0桁以上で入力
  String msg0031(String var0) => Intl.message(
        '#0桁以上で入力',
        name: 'msg0031',
        desc: '#0桁以上で入力',
        args: [var0],
        locale: _localeName,
      );

  /// #0個以内を選択
  String msg0032(String var0) => Intl.message(
        '#0個以内を選択',
        name: 'msg0032',
        desc: '#0個以内を選択',
        args: [var0],
        locale: _localeName,
      );

  /// $var0個以上を選択
  String msg0033(String var0) => Intl.message(
        '#0個以上を選択',
        name: 'msg0033',
        desc: '#0個以上を選択',
        args: [var0],
        locale: _localeName,
      );

  /// パスワードは変更しました。
  String msg0034() => Intl.message(
        'パスワードは変更しました。',
        name: 'msg0034',
        desc: 'パスワードは変更しました。',
        locale: _localeName,
      );

  /// リフレッシュトークンキーの有効期限が切れました。再度ログインしてください。
  String msg0035() => Intl.message(
        'リフレッシュトークンキーの有効期限が切れました。再度ログインしてください。',
        name: 'msg0035',
        desc: 'リフレッシュトークンキーの有効期限が切れました。再度ログインしてください。',
        locale: _localeName,
      );

  /// 端末からの接続が許可されていません。システム管理者にご連絡ください。
  String msg0036() => Intl.message(
        '端末からの接続が許可されていません。システム管理者にご連絡ください。',
        name: 'msg0036',
        desc: '端末からの接続が許可されていません。システム管理者にご連絡ください。',
        locale: _localeName,
      );

  /// 変更された内容は保存しますか。
  String msg0037() => Intl.message(
        '変更された内容は保存しますか。',
        name: 'msg0037',
        desc: '変更された内容は保存しますか。',
        locale: _localeName,
      );

  /// この接続先を削除しますか？
  String msg0038() => Intl.message(
        'この接続先を削除しますか？',
        name: 'msg0038',
        desc: 'この接続先を削除しますか？',
        locale: _localeName,
      );

  /// 規則違反の項目があります。ご確認ください。
  String msg0039() => Intl.message(
        '規則違反の項目があります。ご確認ください。',
        name: 'msg0039',
        desc: '規則違反の項目があります。ご確認ください。',
        locale: _localeName,
      );

  /// 入力必須
  String msg0040() => Intl.message(
        '入力必須',
        name: 'msg0040',
        desc: '入力必須',
        locale: _localeName,
      );

  /// 画面項目の整合性が取れていません。再ログインしてください。
  String msg0041() => Intl.message(
        '画面項目の整合性が取れていません。再ログインしてください。',
        name: 'msg0041',
        desc: '画面項目の整合性が取れていません。再ログインしてください。',
        locale: _localeName,
      );

  /// 付箋情報がありません
  String msg0042() => Intl.message(
        '付箋情報がありません',
        name: 'msg0042',
        desc: '付箋情報がありません',
        locale: _localeName,
      );

  /// 顧客の案件($var0)
  String msg0043(String var0, String var1) => Intl.message(
        '顧客の案件(#1件中#0件)',
        name: 'msg0043',
        desc: '顧客の案件(#1件中#0件)',
        args: [var0, var1],
        locale: _localeName,
      );

  /// 全$var0件
  String msg0044(String var0) => Intl.message(
        '全#0件',
        name: 'msg0044',
        desc: '全#0件',
        args: [var0],
        locale: _localeName,
      );

  /// フォーマット不正
  String msg0045() => Intl.message(
        'フォーマット不正',
        name: 'msg0045',
        desc: 'フォーマット不正',
        locale: _localeName,
      );

  /// 保存しますか？
  String msg0046() => Intl.message(
        '保存しますか？',
        name: 'msg0046',
        desc: '保存しますか？',
        locale: _localeName,
      );

  /// 小数は$var0桁以下
  String msg0047(String var0) => Intl.message(
        '小数は#0桁以下',
        name: 'msg0047',
        desc: '小数は#0桁以下',
        args: [var0],
        locale: _localeName,
      );

  /// 小数は$var0桁以上
  String msg0048(String var0) => Intl.message(
        '小数は#0桁以上',
        name: 'msg0048',
        desc: '小数は#0桁以上',
        args: [var0],
        locale: _localeName,
      );

  /// 整数部は$var0桁以下
  String msg0049(String var0) => Intl.message(
        '整数部は#0桁以下',
        name: 'msg0049',
        desc: '整数部は#0桁以下',
        args: [var0],
        locale: _localeName,
      );

  /// 整数部は$var0桁以上
  String msg0050(String var0) => Intl.message(
        '整数部は#0桁以上',
        name: 'msg0050',
        desc: '整数部は#0桁以上',
        args: [var0],
        locale: _localeName,
      );

  /// 保存しました。
  String msg0051(String var0) => Intl.message(
        '保存しました。',
        name: 'msg0051',
        desc: '保存しました。',
        locale: _localeName,
      );

  /// $var0としてマークする
  String msg0052(String var0) => Intl.message(
        '$var0としてマークする',
        name: 'msg0052',
        desc: '$var0としてマークする',
        args: [var0],
        locale: _localeName,
      );

  /// 無効または掲載期限が切れたため表示できません、
  String msg0053() => Intl.message(
        '無効または掲載期限が切れたため表示できません',
        name: 'msg0053',
        desc: '無効または掲載期限が切れたため表示できません',
        locale: _localeName,
      );

  /// エラーが発生しました。
  String msg0054() => Intl.message(
        'エラーが発生しました。',
        name: 'msg0054',
        desc: 'エラーが発生しました。',
        locale: _localeName,
      );

  /// 表示エラーの項目があります
  String msg0055() => Intl.message(
        '表示エラーの項目があります',
        name: 'msg0055',
        desc: '表示エラーの項目があります',
        locale: _localeName,
      );

  /// 整合性エラーなので詳細画面で表示している情報を編集できない
  String msg0056() => Intl.message(
        '整合性エラーなので詳細画面で表示している情報を編集できない',
        name: 'msg0056',
        desc: '整合性エラーなので詳細画面で表示している情報を編集できない',
        locale: _localeName,
      );

  /// 参照履歴および項目情報を削除しますが、よろしいですか？
  String msg0057() => Intl.message(
        '参照履歴および項目情報を削除しますが、よろしいですか？',
        name: 'msg0057',
        desc: '参照履歴および項目情報を削除しますが、よろしいですか？',
        locale: _localeName,
      );

  /// 項目情報は、次回のログインで取得します。
  String msg0058() => Intl.message(
        '項目情報は、次回のログインで取得します。',
        name: 'msg0058',
        desc: '項目情報は、次回のログインで取得します。',
        locale: _localeName,
      );

  /// 変更を保存しますか？
  String msg0059() => Intl.message(
        '変更を保存しますか？',
        name: 'msg0059',
        desc: '変更を保存しますか？',
        locale: _localeName,
      );

  /// 作業進捗を登録
  String msg0060() => Intl.message(
        '作業進捗を登録',
        name: 'msg0060',
        desc: '作業進捗を登録',
        locale: _localeName,
      );

  /// $var0を登録
  String msg0061(String var0) => Intl.message(
        '$var0を登録',
        name: 'msg0061',
        desc: '$var0を登録',
        args: [var0],
        locale: _localeName,
      );

  /// その他詳細を編集して登録
  String msg0062() => Intl.message(
        'その他詳細を編集して登録',
        name: 'msg0062',
        desc: 'その他詳細を編集して登録',
        locale: _localeName,
      );

  /// $var0がありません。
  String msg0063(String var0) => Intl.message(
        '$var0がありません。',
        name: 'msg0063',
        desc: '$var0がありません。',
        args: [var0],
        locale: _localeName,
      );

  /// アサイン解除されています
  String msg0064() => Intl.message(
        'アサイン解除されています',
        name: 'msg0064',
        desc: 'アサイン解除されています',
        locale: _localeName,
      );

  /// 接続先を追加してください。
  String msg0065() => Intl.message(
        '接続先を追加してください。',
        name: 'msg0065',
        desc: '接続先を追加してください。',
        locale: _localeName,
      );
}
