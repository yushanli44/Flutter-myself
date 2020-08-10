import 'package:crm_mobile/common/config/config.dart';
import 'package:crm_mobile/screens/escalation_list/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// フィルター
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // フィルターオプション
    final Map<String, String> todayFilterOption = {};

    final EscalationListBloc _escalationListBloc = BlocProvider.of<EscalationListBloc>(context);
    return PopupMenuButton<String>(
      key: Key('escalation_list_001_001'),
      icon: Icon(
        Icons.filter_list,
      ),
      onSelected: (String value) {
        _escalationListBloc.add(EscalationListFilterEvent(filterFlag: value));
      },
      itemBuilder: (BuildContext context) {
        return _getItemBuilder(todayFilterOption, context);
      },
    );
  }
}

/// フィルターオプションウィジェット構成<br>
/// return List<PopupMenuEntry<String>> フィルターオプションウィジェット
///
/// 引数
/// ----------------------
/// * [filterOption]    フィルターオプション
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
List<PopupMenuEntry<String>> _getItemBuilder(Map<String, String> filterOption, BuildContext context) {
  final Iterable<String> keyList = filterOption.keys;
  final Iterable<String> valueList = filterOption.values;
  final List<PopupMenuEntry<String>> popList = [];

  for (int i = 0; i < keyList.length; i++) {
    final PopupMenuEntry<String> popupMenu = PopupMenuItem<String>(
      value: keyList.elementAt(i),
      child: Text(valueList.elementAt(i)),
      textStyle: TextStyle(
        fontSize: AppTheme.fontSize2,
        color: Theme.of(context).textTheme.bodyText2.color,
      ),
    );
    popList.add(popupMenu);
  }

  return popList;
}
