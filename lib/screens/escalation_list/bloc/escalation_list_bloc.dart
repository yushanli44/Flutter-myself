import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crm_mobile/screens/escalation_list/model/model.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

import '../use_cases/escalation_list_use_cases.dart';
import 'bloc.dart';

/// 連絡Bloc
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListBloc extends Bloc<EscalationListEvent, EscalationListState> {
  final kiwi.Container injector = kiwi.Container();

  @override
  EscalationListState get initialState => EscalationListUninitState();

  @override
  Stream<EscalationListState> mapEventToState(EscalationListEvent event) async* {
    // 連絡一覧取得　イベント
    if (event is EscalationListGetEvent) {
      final EscalationListUseCases useCases = injector<EscalationListUseCases>();
      final EscalationListLoadedState resultState = await useCases.getEscalationView(EscalationListView(), event);
      yield resultState;
    }
    // 通知既読更新　イベント
    if (event is EscalationListNotifiUpdEvent) {
      final EscalationListView escalationListView = (state as EscalationListLoadedState).escalationListView;
      yield EscalationListLoadedState(escalationListView: escalationListView.copyWith(isLoading: true));
      final EscalationListUseCases useCases = injector<EscalationListUseCases>();
      final EscalationListLoadedState resultState = await useCases.updateInteractStatus(escalationListView, event);
      yield resultState;
    }
    // 連絡一覧の最新情報取得　イベント
    if (event is EscalationListGetMoreEvent) {
      final EscalationListView escalationListView = (state as EscalationListLoadedState).escalationListView;
      yield EscalationListLoadedState(escalationListView: escalationListView.copyWith(isLoading: true));
      final EscalationListUseCases useCases = injector<EscalationListUseCases>();
      final EscalationListLoadedState resultState = await useCases.getMoreEscalationView(escalationListView, event);
      yield resultState;
    }
    // 連絡一覧のフィルタ　イベント
    if (event is EscalationListFilterEvent) {
      final EscalationListView escalationListView = (state as EscalationListLoadedState).escalationListView;
      yield EscalationListLoadedState(escalationListView: escalationListView.copyWith(isLoading: true));
      final EscalationListUseCases useCases = injector<EscalationListUseCases>();
      final EscalationListLoadedState resultState = await useCases.filterEscalationView(EscalationListView(), event);
      yield resultState;
    }
  }

  @override
  void onError(Object error, StackTrace stacktrace) {
    print(error.toString());
    print(stacktrace.toString());
    super.onError(error, stacktrace);
  }
}
