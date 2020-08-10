import 'package:geolocator/geolocator.dart';

/// 地理位置ユーティリティ
///
/// 改訂履歴
/// ----------------------
/// * 2019/08/08
class LocationUtil {
  LocationUtil();

  /// 現在位置情報取得<br>
  /// エラーが発生する場合、空文字列を返す<br>
  ///
  /// return String 現在位置情報（経度、緯度、取得日時）
  ///
  /// 引数
  /// ----------------------
  ///
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/07
  static Future<String> getLocationInfo() async {
    try {
      final Geolocator locator = Geolocator();
      locator.forceAndroidLocationManager = true;
      // 精度:10メートル範囲内精確
      final Position location = await locator.getLastKnownPosition(desiredAccuracy: LocationAccuracy.high);

      // 現在日時
      final String nowUnixTimestamp = DateTime.now().millisecondsSinceEpoch.toString();
      // 緯度
      final String latitude = location.latitude.toString();
      // 経度
      final String longitude = location.longitude.toString();

      // 現在位置情報
      final String locationInfo = 't=$nowUnixTimestamp;p=[$latitude,$longitude]';

      return locationInfo;
    } catch (e) {
      return '';
    }
  }
}
