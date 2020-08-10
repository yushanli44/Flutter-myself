import 'package:crm_mobile/common/app_const.dart';
import 'package:crm_mobile/common/util/util.dart';
import 'package:crm_mobile/screens/escalation_list/bloc/escalation_list_event.dart';
import 'package:crm_mobile/screens/escalation_list/bloc/escalation_list_state.dart';
import 'package:crm_mobile/screens/escalation_list/model/model.dart';
import 'package:crm_mobile/screens/escalation_list/repository/i_escalation_list_repository.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

import '../escalation_list_use_cases.dart';

/// 連絡ロジック 実装クラス
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListInterActors extends EscalationListUseCases {
  final kiwi.Container injector = kiwi.Container();

  /// エスカレーション取得<br>
  /// return Future<EscalationLoadedState> エスカレーションロード済ステート
  ///
  /// 引数
  /// ----------------------
  /// [escalationListView]    連絡一覧　モデル(画面用)
  /// [event]    連絡一覧取得
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/24  新規作成
  @override
  Future<EscalationListLoadedState> getEscalationView(
      EscalationListView escalationListView, EscalationListGetEvent event) async {
    final IEscalationListRepository escalationRepository = injector<IEscalationListRepository>();

    // エスカレーション情報取得
    final EscalationListView escalationViewList =
        await escalationRepository.getEscalationView(escalationListView, 1, CountConst.maxSelectCount, 1);

    return EscalationListLoadedState(escalationListView: escalationViewList);
  }

  /// 通知既読更新<br>
  /// return <EscalationLoadedState> エスカレーションロード済ステート
  ///
  /// 引数
  /// ----------------------
  /// [event]    通知既読更新イベント
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/07/30 lzt-liangzhao 新規作成
  @override
  Future<EscalationListLoadedState> updateInteractStatus(
      EscalationListView escalationListView, EscalationListNotifiUpdEvent event) async {
    final IEscalationListRepository escalationRepository = injector<IEscalationListRepository>();
    final EscalationListView responseView = await escalationRepository.updateInteractStatus(event.escalationId);
    if (!HttpUtil.isStatusSuccess(responseView.httpStatusCode)) {
      return EscalationListLoadedState(
        escalationListView: escalationListView.copyWith(
          httpStatusCode: responseView.httpStatusCode,
          message: responseView.message,
          status: responseView.status,
          isLoading: false,
          skipToFlg: false,
          isShowErrorFlg: true,
        ),
      );
    }
    return EscalationListLoadedState(
      escalationListView: escalationListView.copyWith(
        httpStatusCode: responseView.httpStatusCode,
        message: responseView.message,
        status: responseView.status,
        escalationId: event.escalationId,
        isLoading: false,
        skipToFlg: true,
      ),
    );
  }

  /// 連絡一覧の最新情報取得<br>
  /// return Future<EscalationListLoadedState> エスカレーションロード済ステート
  ///
  /// 引数
  /// ----------------------
  /// * [escalationListView]    連絡一覧　モデル(画面用)
  /// * [event]                 イベント
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/25  新規作成
  @override
  Future<EscalationListLoadedState> getMoreEscalationView(
      EscalationListView escalationListView, EscalationListGetMoreEvent event) async {
    final IEscalationListRepository escalationRepository = injector<IEscalationListRepository>();
    int onlyUnreadFlg = 0;

    if (escalationListView.filterFlag != null &&
        escalationListView.filterFlag.isNotEmpty &&
        escalationListView.filterFlag.compareTo('1') != 0) {
      onlyUnreadFlg = 1;
    }
    // 連絡情報を取得
    final EscalationListView responseView = await escalationRepository.getEscalationView(
        escalationListView,
        escalationListView.lastToRecord + 1,
        escalationListView.lastToRecord + CountConst.maxSelectCount,
        onlyUnreadFlg);

    if (!HttpUtil.isStatusSuccess(responseView.httpStatusCode)) {
      return EscalationListLoadedState(
        escalationListView: escalationListView.copyWith(
          httpStatusCode: responseView.httpStatusCode,
          message: responseView.message,
          status: responseView.status,
          isShowErrorFlg: escalationListView.isShowErrorFlg == true ? false : true,
        ),
      );
    }
    // 全て連絡情報
    final List<EscalationView> escalationList = escalationListView.escalations ?? [];
    escalationList.addAll(responseView.escalations ?? []);

    // 全て
    return EscalationListLoadedState(
      escalationListView: escalationListView.copyWith(
        httpStatusCode: responseView.httpStatusCode,
        message: responseView.message,
        status: responseView.status,
        escalations: escalationList,
        escalationListFilterView: escalationList,
        isLoading: false,
        lastToRecord: responseView.lastToRecord,
        escalationIds: responseView.escalationIds,
        idFromRecord: responseView.idFromRecord,
        hasNext: responseView.hasNext,
      ),
    );
  }

  /// 連絡一覧のフィルタ<br>
  /// return Future<EscalationListLoadedState> エスカレーションロード済ステート
  ///
  /// 引数
  /// ----------------------
  /// * [escalationListView]    連絡一覧　モデル(画面用)
  /// * [event]                 イベント
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2020/03/25  新規作成
  @override
  Future<EscalationListLoadedState> filterEscalationView(
      EscalationListView escalationListView, EscalationListFilterEvent event) async {
    final IEscalationListRepository escalationRepository = injector<IEscalationListRepository>();
    int onlyUnreadFlg = 0;
    if (event.filterFlag != null && event.filterFlag.compareTo('1') != 0) {
      onlyUnreadFlg = 1;
    }
    // エスカレーション情報取得
    final EscalationListView escalationViewList =
        await escalationRepository.getEscalationView(escalationListView, 1, CountConst.maxSelectCount, onlyUnreadFlg);
    return EscalationListLoadedState(
      escalationListView: escalationViewList.copyWith(
        filterFlag: event.filterFlag,
        isLoading: false,
      ),
    );
  }
}
