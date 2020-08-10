import 'package:bloc/bloc.dart';

/// ブロックデリゲート
///
/// 改訂履歴
/// ----------------------
/// * 2019/07/29 lzt-sunjiashu 新規作成
class AppBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}
