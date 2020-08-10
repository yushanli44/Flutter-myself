import 'dart:async';

import 'package:crm_mobile/common/config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

/// 共通WebView
///
/// 改訂履歴
/// ----------------------
/// * 2019/08/06  新規作成
@immutable
class CommonWebView extends StatefulWidget {
  final String url;
  final String title;

  const CommonWebView(this.url, this.title);

  @override
  _CommonWebViewState createState() => _CommonWebViewState(url, title);
}

class _CommonWebViewState extends State<CommonWebView> {
  String url;
  String title;
  // ロード中フラグ
  bool loading = true;
  // 当画面はコールバックの画面かのフラグ
  bool isLoadingCallbackPage = false;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  // URL変更Listener
  StreamSubscription<String> onUrlChanged;
  // WebViewロード状態Listener
  StreamSubscription<WebViewStateChanged> onStateChanged;
  // FlutterWebView対象
  FlutterWebviewPlugin flutterWebViewPlugin = FlutterWebviewPlugin();

  _CommonWebViewState(this.url, this.title);

  @override
  void initState() {
    super.initState();
    onStateChanged = flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      if (state.type == WebViewState.shouldStart) {
        // ロード準備
        setState(() {
          loading = true;
        });
      }
      if (state.type == WebViewState.startLoad) {
        // ロード中
        loading = true;
      }
      if (state.type == WebViewState.finishLoad) {
        // ロード完了
        setState(() {
          loading = false;
        });
        if (isLoadingCallbackPage) {
          // コールバック画面なら、JSメソッドでデータを取得する
          parseResult();
        }
      }
    });
  }

  /// WebViewのデータを解析する<br>
  /// return void
  ///
  /// 引数
  /// ----------------------
  ///
  ///
  /// 改訂履歴
  /// ----------------------
  /// * 2019/08/06  新規作成
  void parseResult() {}

  @override
  Widget build(BuildContext context) {
    final List<Widget> titleContent = [];
    titleContent.add(Text(
      title,
      textAlign: TextAlign.left,
    ));

    if (loading) {
      // ロード中、プロセスバーを表示
      titleContent.add(CupertinoActivityIndicator());
    }
    titleContent.add(Container(width: 50.0));

    // WebViewでURLをロード
    return SafeArea(
      child: WebviewScaffold(
        key: scaffoldKey,
        url: url, // ロード対象URL
        appBar: PreferredSize(
            child: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: titleContent,
              ),
              centerTitle: false,
              iconTheme: IconThemeData(color: Colors.white),
            ),
            preferredSize: Size.fromHeight(AppTheme.appBarHeight1)),
        withZoom: true, // ページの拡大縮小可能
        withLocalStorage: true, // ローカルストレージ利用可能
        withJavascript: true, // JSソース実行可能
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).bottomAppBarColor,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  flutterWebViewPlugin.goBack();
                },
              ),
              Expanded(
                child: Text(''),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  flutterWebViewPlugin.goForward();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    onUrlChanged?.cancel();
    onStateChanged?.cancel();
    flutterWebViewPlugin?.dispose();
    super.dispose();
  }
}
