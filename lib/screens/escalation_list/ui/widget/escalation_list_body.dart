import 'package:crm_mobile/common/config/config.dart';
import 'package:crm_mobile/common/i18n/i18n.dart';
import 'package:crm_mobile/common/util/util.dart';
import 'package:crm_mobile/screens/escalation_list/bloc/bloc.dart';
import 'package:crm_mobile/screens/escalation_list/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// 連絡一覧
///
/// 改訂履歴
/// ----------------------
/// * 2020/03/24  新規作成
class EscalationListBody extends StatefulWidget {
  /// 連絡一覧モデル
  final EscalationListView escalationListView;

  const EscalationListBody({@required this.escalationListView});

  @override
  _EscalationListBodyState createState() => _EscalationListBodyState();
}

class _EscalationListBodyState extends State<EscalationListBody> {
  EscalationListBloc _escalationListBloc = EscalationListBloc();
  @override
  void initState() {
    _escalationListBloc = BlocProvider.of<EscalationListBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final EscalationListView escalationListView = widget.escalationListView;

    return Container(
      margin: EdgeInsets.only(left: AppTheme.padding2, right: AppTheme.padding2),
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          if (index < escalationListView.escalationListFilterView.length) {
            final EscalationView escalationView = escalationListView.escalationListFilterView[index];
            IconData escPersonIcon;
            String escPersonLabel = '';

            return Container(
              key: Key('escalation_list_101_002'),
              margin: EdgeInsets.only(top: AppTheme.padding2),
              child: InkWell(
                onTap: () async {
                  _escalationListBloc.add(EscalationListNotifiUpdEvent(
                    escalationId: escalationView.escalationId,
                  ));
                },
                child: Card(
                  key: Key('escalation_list_101_001'),
                  elevation: 0.0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(AppTheme.radiusCircular4)),
                    side: BorderSide(color: Theme.of(context).dividerColor, width: 1, style: BorderStyle.solid),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        key: Key('escalation_list_102_001'),
                        height: AppTheme.headerFooterHeight,
                        decoration: BoxDecoration(
                          color: ColorUtil.getColorFromHex(context, escalationView.aspColor),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppTheme.radiusCircular3),
                            topRight: Radius.circular(AppTheme.radiusCircular3),
                          ),
                        ),
                      ),
                      Container(
                        key: Key('escalation_list_103_001'),
                        margin: EdgeInsets.only(
                          left: AppTheme.padding3,
                          right: AppTheme.padding2,
                          top: AppTheme.padding5,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              key: Key('escalation_list_103_002'),
                              margin: EdgeInsets.only(right: AppTheme.padding1),
                              child: Icon(
                                Icons.access_time,
                                size: AppTheme.iconSize1,
                                color: Theme.of(context).textTheme.bodyText1.color,
                              ),
                            ),
                            Text(
                              escalationView.reservePeriod == null || escalationView.reservePeriod.isEmpty
                                  ? AppMessage.of(context).lbl0238()
                                  : escalationView.reservePeriod,
                              key: Key('escalation_list_103_003'),
                              style: TextStyle(
                                fontSize: AppTheme.fontSize1,
                                color: Theme.of(context).textTheme.bodyText1.color,
                                height: 17 / AppTheme.fontSize1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        key: Key('escalation_list_104_001'),
                        margin: EdgeInsets.only(
                          left: AppTheme.padding3,
                          right: AppTheme.padding2,
                          top: AppTheme.padding1,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              key: Key('escalation_list_104_002'),
                              margin: EdgeInsets.only(right: AppTheme.padding1),
                              child: Icon(
                                Icons.location_on,
                                size: AppTheme.iconSize1,
                                color: Theme.of(context).textTheme.bodyText1.color,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                escalationView.address,
                                style: TextStyle(
                                  fontSize: AppTheme.fontSize1,
                                  color: Theme.of(context).textTheme.bodyText1.color,
                                  height: 17 / AppTheme.fontSize1,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        key: Key('escalation_list_105_001'),
                        margin: EdgeInsets.only(
                          left: AppTheme.padding3,
                          right: AppTheme.padding2,
                          top: AppTheme.padding2,
                        ),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          escalationView.escalationMsg,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: AppTheme.fontSize2,
                            fontWeight: FontWeight.w500,
                            height: 20 / AppTheme.fontSize2,
                            color: Theme.of(context).textTheme.bodyText1.color,
                          ),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: AppTheme.padding3,
                          right: AppTheme.padding2,
                          top: AppTheme.padding1,
                          bottom: AppTheme.padding10,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: AppTheme.padding5),
                              child: Icon(
                                escPersonIcon,
                                size: AppTheme.iconSize2,
                                color: Theme.of(context).textTheme.bodyText1.color,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                escPersonLabel,
                                style: TextStyle(
                                  fontSize: AppTheme.fontSize1,
                                  color: Theme.of(context).textTheme.bodyText1.color,
                                ),
                              ),
                            ),
                            escalationView.escalationStatus == null || escalationView.escalationStatus.isEmpty
                                ? Container()
                                : Container(
                                    color: ColorUtil.getColorFromHex(context, escalationView.escalationStatusColor),
                                    padding: EdgeInsets.only(
                                      right: AppTheme.padding2,
                                      left: AppTheme.padding2,
                                      top: AppTheme.padding14,
                                      bottom: AppTheme.padding14,
                                    ),
                                    child: Text(
                                      escalationView.escalationStatusName,
                                      style: TextStyle(
                                        fontSize: AppTheme.fontSize1,
                                        height: 17 / AppTheme.fontSize1,
                                        color:
                                            ColorUtil.getHeadNameColor(context, escalationView.escalationStatusColor),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return RaisedButton(
            child: Text(AppMessage.of(context).lbl0242()),
            textColor: Theme.of(context).accentColor,
            color: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1.0,
                color: Theme.of(context).dividerColor,
              ),
            ),
            onPressed: () {
              _escalationListBloc.add(EscalationListGetMoreEvent());
            },
          );
        },
        itemCount: escalationListView.hasNext == false
            ? escalationListView.escalationIds.length
            : escalationListView.escalationListFilterView.length + 1,
      ),
    );
  }
}
