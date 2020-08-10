import 'package:crm_mobile/common/app_const.dart';
import 'package:crm_mobile/common/model/model.dart';
import 'package:crm_mobile/common/util/util.dart';
import 'package:dio/dio.dart';

import '../../../model/model.dart';
import '../i_escalation_list_api.dart';

/// 連絡API 実装クラス
///
/// 改訂履歴
/// ----------------------
class EscalationListApiImpl extends IEscalationListApi {
  //// エスカレーション一覧情報取得<br>
  /// return Future<EscalationList> エスカレーション一覧情報
  ///
  /// 引数
  /// ----------------------
  /// * [escalationIds]    エスカレーションId一覧
  ///
  /// 改訂履歴
  /// ----------------------
  @override
  Future<EscalationList> getEscalation(List<int> escalationIds) async {
    // パラメータ
    final Map<String, dynamic> param = <String, dynamic>{
      'escalationIds': escalationIds.join(','),
    };
    // API実行
    final Response response =
        await HttpUtil.doGet(HttpConst.methodGet, AppUrl.url(AppUrl.apiMobileVer1, AppUrl.escalation), param);

    final Map<String, dynamic> responseMap = response.data as Map<String, dynamic>;
    final EscalationList escalationList = EscalationList.fromJson(responseMap);
    return escalationList;
  }

  @override
  Future<CommonResponse> updateInteractStatus(int escalationId) async {
    // パラメータ
    final Map<String, dynamic> param = <String, dynamic>{
      'escalationId': escalationId,
    };

    // API実行
    final Response response =
        await HttpUtil.doPost(HttpConst.methodPut, AppUrl.url(AppUrl.apiMobileVer1, AppUrl.notificationRead), param);

    // API実行結果
    final Map<String, dynamic> data = response.data as Map<String, dynamic>;

    final CommonResponse commonResponse = CommonResponse.fromJson(data);
    return commonResponse;
  }


  @override
  Future<EscalationIds> getEscalationId(int fromRecord, int toRecord, int onlyUnreadFlg) async {
    // パラメータ
    final Map<String, dynamic> param = <String, dynamic>{
      'fromRecord': fromRecord,
      'toRecord': toRecord,
      'onlyUnreadFlg': onlyUnreadFlg,
    };
    // API実行
    final Response response =
        await HttpUtil.doGet(HttpConst.methodGet, AppUrl.url(AppUrl.apiMobileVer1, AppUrl.escalationIds), param);

    final Map<String, dynamic> responseMap = response.data as Map<String, dynamic>;
    final EscalationIds escalationIds = EscalationIds.fromJson(responseMap);
    return escalationIds;
  }
}
