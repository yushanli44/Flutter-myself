import 'package:crm_mobile/common/config/config.dart';
import 'package:flutter/material.dart';

/// 共通Divider
///
/// 改訂履歴
/// ----------------------
/// * 2019/06/13
class CommonDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppTheme.dividerPadding,
        right: AppTheme.dividerPadding,
      ),
      child: Divider(),
    );
  }
}
