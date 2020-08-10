import 'package:crm_mobile/common/config/config.dart';
import 'package:crm_mobile/common/i18n/i18n.dart';
import 'package:crm_mobile/common/util/util.dart';
import 'package:crm_mobile/common/widget/progressDialog.dart';
import 'package:crm_mobile/screens/escalation_list/bloc/bloc.dart';
import 'package:crm_mobile/screens/escalation_list/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/widget.dart';

/// 連絡画面
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListScreen extends StatefulWidget {
  /// 連絡一覧画面の遷移先キー  TODAYまたはメニューの連絡
  final String openUrl;

  const EscalationListScreen({this.openUrl});

  @override
  _EscalationListScreenState createState() => _EscalationListScreenState();
}

/// 連絡画面ステート
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class _EscalationListScreenState extends State<EscalationListScreen> {
  EscalationListBloc _escalationListBloc = EscalationListBloc();

  @override
  void initState() {
    _escalationListBloc = BlocProvider.of<EscalationListBloc>(context);
    _escalationListBloc.add(EscalationListGetEvent());
    // TODO(LZT): ここの処理が必要ない。
//    if (widget.openUrl == EscalationConst.todayEscalation) {
//      print('EscalationListScreen TodayLoadEvent');
//      BlocProvider.of<TodayBloc>(context).add(TodayLoadEvent(currentTabIndex: 0));
//    }
    super.initState();
  }

  bool isSkipToFlg = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _escalationListBloc,
      child: BlocListener(
        bloc: _escalationListBloc,
        listener: (BuildContext context, EscalationListState state) {
          if (state is EscalationListLoadedState) {
            final EscalationListView _escalationListView = state.escalationListView;
            // トークン期限切れ
            if (HttpUtil.isStatusUnauthorized(_escalationListView.httpStatusCode)) {
              debugPrint('401: ログイン画面へ');
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) {
                return;
              }), (Route<dynamic> route) => false);

              return Container();
            }
            // ユーザが削除された
            if (HttpUtil.isStatusForbidden(_escalationListView.httpStatusCode)) {
              debugPrint('403: ログイン画面へ');
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) {
                return;
              }), (Route<dynamic> route) => false);

              return Container();
            }
            // 成功以外
            if (!HttpUtil.isStatusSuccess(_escalationListView.httpStatusCode) &&
                _escalationListView.isShowErrorFlg == true) {
              // メッセージ
              final String message = _escalationListView.message;

              debugPrint('メッセージをダイアログで表示');
              debugPrint(message);
              // その他エラー
              showDialog<void>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Text(
                        message,
                        style: TextStyle(
                            fontSize: AppTheme.fontSize2,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                    );
                  });
              return Container();
            }
            if (_escalationListView.skipToFlg == true) {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return;
              })).then((_) {
                print('AFTER NAVIGATE TO EscalationInfoScreen');
                _escalationListBloc.add(EscalationListGetEvent());
              });
            }
          }
          return Container();
        },
        child: BlocBuilder<EscalationListBloc, EscalationListState>(
          bloc: _escalationListBloc,
          builder: (BuildContext context, EscalationListState state) {
            if (state is EscalationListUninitState) {
              return Scaffold(
                appBar: PreferredSize(
                    child: AppBar(
                      title: Text(
                        AppMessage.of(context).lbl0030(),
                        style: TextStyle(fontSize: AppTheme.fontSize2),
                        textAlign: TextAlign.left,
                      ),
                      centerTitle: false,
                      leading: Builder(builder: (context) {
                        return IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {},
                        );
                      }),
                    ),
                    preferredSize: Size.fromHeight(AppTheme.appBarHeight2)),
                body: Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            }
            if (state is EscalationListLoadedState) {
              final EscalationListView escalationListView = state.escalationListView;
              if (!HttpUtil.isStatusSuccess(escalationListView.httpStatusCode)) {
                return Container();
              }
              return Scaffold(
                appBar: PreferredSize(
                    child: AppBar(
                      title: Text(
                        AppMessage.of(context).lbl0030(),
                        style: TextStyle(fontSize: AppTheme.fontSize2),
                        textAlign: TextAlign.left,
                      ),
                      centerTitle: false,
                      leading: Builder(builder: (context) {
                        return IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {},
                        );
                      }),
                      actions: <Widget>[
                        EscalationListAction(),
                      ],
                    ),
                    preferredSize: Size.fromHeight(AppTheme.appBarHeight2)),
                body: SafeArea(
                  child: ProgressDialog(
                    loading: escalationListView.isLoading ?? false,
                    msg: '',
                    child: EscalationListBody(
                      escalationListView: escalationListView,
                    ),
                  ),
                ),
              );
            }
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
