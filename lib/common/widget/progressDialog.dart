import 'package:crm_mobile/common/config/config.dart';
import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {
  final Widget child;

  final bool loading;

  final String msg;

  final Widget progress;

  final double alpha;
  final Color textColor;
  const ProgressDialog(
      {Key key,
      @required this.loading,
      this.msg,
      this.progress = const CircularProgressIndicator(),
      this.alpha = 0.6,
      this.textColor = Colors.white,
      @required this.child})
      : assert(child != null),
        assert(loading != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetList = [];
    widgetList.add(child);
    if (loading) {
      Widget layoutProgress;
      if (msg == null) {
        layoutProgress = Center(
          child: progress,
        );
      } else {
        layoutProgress = Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(4.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: msg.isEmpty
                  ? <Widget>[
                      progress,
                    ]
                  : <Widget>[
                      progress,
                      Text(
                        msg,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            fontSize: AppTheme.fontSize2,
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                    ],
            ),
          ),
        );
      }
      widgetList.add(Opacity(
        opacity: alpha,
        child: ModalBarrier(color: Colors.black87, dismissible: false),
      ));
      widgetList.add(layoutProgress);
    }
    return Stack(
      children: widgetList,
    );
  }
}
