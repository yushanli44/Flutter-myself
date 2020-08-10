import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:crm_mobile/screens/escalation_list/ui/escalation_list_screen.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:orientation/orientation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc_delegate.dart';
import 'common/app_const.dart';
import 'common/bloc/bloc.dart';
import 'common/config/config.dart';
import 'common/i18n/i18n.dart';
import 'kiwi_di.dart';

/// 入口方法<br>
///
/// 参数
/// ----------------------
///
///
/// ----------------------
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // bloc监听
  BlocSupervisor.delegate = AppBlocDelegate();

  // KIWI 初始化
  initInjector();

  // crash log
  // make a crash log instance available
  Crashlytics.instance.enableInDevMode = true;
  // In case of crash log, record error
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  // Get app placement
  final SharedPreferences preferences = await SharedPreferences.getInstance();

  // theme mode
  String themeMode = preferences.get(PreferenceKey.themeMode) as String;
  if (themeMode == null || themeMode == '') {
    themeMode = AppThemeMode.light.toString();
  }
  // language
  String languageCode = preferences.get(PreferenceKey.languageCode) as String;
  if (languageCode == null || languageCode == '') {
    languageCode = LanguageCode.ja;
  }

  // App placement
  final AppConfig config = AppConfig(
      themeMode: themeMode == AppThemeMode.dark.toString() ? AppThemeMode.dark : AppThemeMode.light,
      languageCode: languageCode);

  // Screen direction: Vertical (forced)
  OrientationPlugin.forceOrientation(null).then((_) {
    OrientationPlugin.setPreferredOrientations([DeviceOrientation.portraitUp]);
    OrientationPlugin.forceOrientation(DeviceOrientation.portraitUp);
  }).then((_) {
    // start app
    debugPrint('start app');
    runApp(App(config: config));
  });
}

class App extends StatefulWidget {
  /// App placement
  final AppConfig config;

  const App({@required this.config});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final GlobalKey<NavigatorState> _navigationKey = GlobalKey(debugLabel: 'Main Navigator');
  // language delegate
  AppMessageLocalDelegate appMessageLocalDelegate;
  AppCupertinoLocalDelegate appCupertinoLocalDelegate;
  AppMaterialLocalizationsDelegate appMaterialLocalizationsDelegate;

  //global BLOC
  final MobileBloc _mobileBloc = MobileBloc();

  // Push message
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();

    // Language initiation
    appMessageLocalDelegate = AppMessageLocalDelegate(Locale(widget.config.languageCode));
    appCupertinoLocalDelegate = AppCupertinoLocalDelegate(Locale(widget.config.languageCode));
    appMaterialLocalizationsDelegate = AppMaterialLocalizationsDelegate(Locale(widget.config.languageCode));
    // Language switching callback
    localeController.onLocaleChanged = onLocaleChange;

    // Push message
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print('on message $message');
        showDialogOnMessage(message);
      },
      onLaunch: (Map<String, dynamic> message) async {
        print('on launch $message');

        // 执行指定操作
        navigateOnLaunch(message);
      },
      onResume: (Map<String, dynamic> message) async {
        print('on resume $message');
        // 执行指定操作
        navigateOnResume(message);
      },
    );
    _firebaseMessaging
        .requestNotificationPermissions(const IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.onIosSettingsRegistered.listen((IosNotificationSettings settings) {
      print('Settings registered: $settings');
    });
    _firebaseMessaging.getToken().then((String token) async {
      print(token);
      final prefs = await SharedPreferences.getInstance();
    });
  }

  Future<void> navigateOnLaunch(Map<String, dynamic> message) async {
    if (message != null) {
      if (Platform.isAndroid) {
        final data = message[PushNotificationConst.payloadKeyData];
        if (data != null) {
          final action = data[PushNotificationConst.payloadKeyAction];
          // 判断接收通知的内容
          if (action == PushNotificationConst.actionEscalation || action == PushNotificationConst.actionMessage) {
            debugPrint('escalation 的通知');
            // 获取通知里面的内容
            final String notificationGroupId = message[PushNotificationConst.payloadKeyNotifiGroupId] as String;
            final String escalationId = message[PushNotificationConst.payloadKeyEscalationId] as String;
          }
        }
      } else if (Platform.isIOS) {
        final action = message[PushNotificationConst.payloadKeyAction];
        if (action == PushNotificationConst.actionEscalation || action == PushNotificationConst.actionMessage) {
          final String notificationGroupId = message[PushNotificationConst.payloadKeyNotifiGroupId] as String;
          final String escalationId = message[PushNotificationConst.payloadKeyEscalationId] as String;
        }
      }
    }
  }

  Future<void> navigateOnMessage(Map<String, dynamic> message) async {
    if (message != null) {
      if (Platform.isAndroid) {
        final data = message[PushNotificationConst.payloadKeyData];
        if (data != null) {
          final action = data[PushNotificationConst.payloadKeyAction];
          if (action == PushNotificationConst.actionEscalation || action == PushNotificationConst.actionMessage) {
            final String notificationGroupId = message[PushNotificationConst.payloadKeyNotifiGroupId] as String;
            final String escalationId = message[PushNotificationConst.payloadKeyEscalationId] as String;
          }
        }
      } else if (Platform.isIOS) {
        final action = message[PushNotificationConst.payloadKeyAction];
        if (action == PushNotificationConst.actionEscalation || action == PushNotificationConst.actionMessage) {
          final String notificationGroupId = message[PushNotificationConst.payloadKeyNotifiGroupId] as String;
          final String escalationId = message[PushNotificationConst.payloadKeyEscalationId] as String;
        }
      }
    }
  }

  Future<void> navigateOnResume(Map<String, dynamic> message) async {
    if (message != null) {
      if (Platform.isAndroid) {
        final data = message[PushNotificationConst.payloadKeyData];
        if (data != null) {
          final action = data[PushNotificationConst.payloadKeyAction];

          if (action == PushNotificationConst.actionEscalation || action == PushNotificationConst.actionMessage) {
            final String notificationGroupId = message[PushNotificationConst.payloadKeyNotifiGroupId] as String;
            final String escalationId = message[PushNotificationConst.payloadKeyEscalationId] as String;
          }
        }
      } else if (Platform.isIOS) {
        final action = message[PushNotificationConst.payloadKeyAction];
        if (action == PushNotificationConst.actionEscalation || action == PushNotificationConst.actionMessage) {
          final String notificationGroupId = message[PushNotificationConst.payloadKeyNotifiGroupId] as String;
          final String escalationId = message[PushNotificationConst.payloadKeyEscalationId] as String;
        }
      }
    }
  }

  /// PushNotificationのonMessage Show dialog on event<br>
  ///
  ///
  ///
  /// ----------------------
  ///
  ///
  void showDialogOnMessage(Map<String, dynamic> message) {
    final BuildContext _context = _navigationKey.currentState.overlay.context;
    String notificationMessage;
    if (Platform.isAndroid) {
      final body = message[PushNotificationConst.messageKeyNotification][PushNotificationConst.messageKeyBody];
      if (body != null) {
        notificationMessage = body.toString();
      }
    } else if (Platform.isIOS) {
      final body = message[PushNotificationConst.messageKeyAps][PushNotificationConst.messageKeyAlert]
          [PushNotificationConst.messageKeyBody];
      if (body != null) {
        notificationMessage = body.toString();
      }
    }

    if (notificationMessage != null) {
      showDialog(
          context: _context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(AppMessage.of(_context).lbl0027()),
              content: Text(notificationMessage),
              actions: <Widget>[
                FlatButton(
                  child: Text(AppMessage.of(_context).lbl0032()),
                  onPressed: () {
                    Navigator.pop(_context);
                    navigateOnMessage(message);
                  },
                ),
                FlatButton(
                  child: Text(AppMessage.of(_context).lbl0096()),
                  onPressed: () {
                    Navigator.pop(_context);
                  },
                )
              ],
            );
          });
    }
  }

  /// language change<br>
  /// return void
  ///
  /// 参数
  /// ----------------------
  /// * [newLocale]    新的语言id
  ///
  void onLocaleChange(Locale newLocale) {
    setState(() {
      appMessageLocalDelegate = AppMessageLocalDelegate(newLocale);
      appCupertinoLocalDelegate = AppCupertinoLocalDelegate(newLocale);
      appMaterialLocalizationsDelegate = AppMaterialLocalizationsDelegate(newLocale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MobileBloc>(
            create: (context) => _mobileBloc,
          ),
//          BlocProvider<NavigateBloc>(
//            create: (context) => _navigateBloc,
//          ),
        ],
        child: BlocBuilder(
            bloc: _mobileBloc..add(InitThemeEvent()),
            builder: (BuildContext context, MobileState state) {
              if (state is ThemeChangedState) {
                return MaterialApp(
                    navigatorKey: _navigationKey,
                    key: Key('CRM_MOBILE'),
                    title: AppConst.appName,
                    theme: state is ThemeChangedState ? state.themeData : AppTheme.lightTheme(),
                    // 语言 delegates
                    localizationsDelegates: [
                      appMessageLocalDelegate,
                      appCupertinoLocalDelegate,
                      appMaterialLocalizationsDelegate,
                      GlobalWidgetsLocalizations.delegate,
                    ],
                    // app支持的语言
                    supportedLocales: const <Locale>[
                      Locale(LanguageCode.en),
                      Locale(LanguageCode.ja),
                    ],
                    home: EscalationListScreen());
              } else {
                /// bloc 初始状态时调用
                return MaterialApp(
                    navigatorKey: _navigationKey,
                    key: Key('CRM_MOBILE'),
                    title: AppConst.appName,
                    theme: AppTheme.lightTheme(),
                    localizationsDelegates: [
                      appMessageLocalDelegate,
                      appCupertinoLocalDelegate,
                      appMaterialLocalizationsDelegate,
                      GlobalWidgetsLocalizations.delegate,
                    ],
                    supportedLocales: const <Locale>[
                      Locale(LanguageCode.en),
                      Locale(LanguageCode.ja),
                    ],
                    home: Container());
              }
            }));
  }
}
