import 'package:crm_mobile/common/config/config.dart';
import 'package:crm_mobile/common/i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_const.dart';

/// 画面不整合のメッセージ
///
/// 改訂履歴
/// ----------------------
/// * 2019/12/25  新規作成
class CommonItemDispMessage extends StatelessWidget {
  final List<String> itemDispLabelList;
  final bool showAllMsgFlg;
  const CommonItemDispMessage({@required this.itemDispLabelList, this.showAllMsgFlg});
  @override
  Widget build(BuildContext context) {
    /// メッセージの設定　<br>
    /// return List<Widget> widgetのリスト
    ///
    /// 引数
    /// ----------------------
    ///
    /// 改訂履歴
    /// ----------------------
    /// * 2019/12/25  新規作成
    List<Widget> setMessageList() {
      final List<Widget> msgList = [
        Text(
          AppMessage.of(context).msg0056(),
          style: TextStyle(
            color: Theme.of(context).errorColor,
            height: 17 / 12,
          ),
        ),
      ];
      for (int i = 0;
          i <
              (showAllMsgFlg == true || itemDispLabelList.length < CountConst.minShowRowCount
                  ? itemDispLabelList.length
                  : CountConst.minShowRowCount);
          i++) {
        msgList.add(
          Text(
            itemDispLabelList[i],
            style: TextStyle(
              color: Theme.of(context).errorColor,
              height: 17 / 12,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        );
      }
      return msgList;
    }

    return GestureDetector(
      onLongPress: () {
        String copyStr = '';
        for (String itemDispLabel in itemDispLabelList) {
          copyStr = '$copyStr\n$itemDispLabel';
        }
        final ClipboardData versionData = ClipboardData(text: copyStr);
        // コピー
        Clipboard.setData(versionData);

        // コピーメッセージ
        Scaffold.of(context).showSnackBar(
          SnackBar(
            elevation: AppTheme.elevationNum,
            content: Text(
              AppMessage.of(context).lbl0150(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: AppTheme.fontSize2,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            duration: Duration(seconds: 7),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: AppTheme.padding2),
        padding: EdgeInsets.only(left: AppTheme.padding3, right: AppTheme.padding2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(AppTheme.radiusCircular2),
          ),
          border: Border.all(
            color: Theme.of(context).dividerColor,
            width: 1.0,
          ),
          color: Theme.of(context).cardColor,
        ),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.info,
                size: AppTheme.iconSize2,
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: AppTheme.padding10, top: AppTheme.padding11, bottom: AppTheme.padding10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: setMessageList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
