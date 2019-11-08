import 'package:bee_app/screens/contacts/contacts.dart';
import 'package:bee_app/screens/get_started/get_started.dart';
import 'package:bee_app/screens/my_dashboard/my_dashboard.dart';
import 'package:bee_app/screens/send_money/send_money.dart';
import 'package:bee_app/screens/sign_in/sign_in.dart';
import 'package:bee_app/screens/sign_up/sign_up.dart';
import 'package:bee_app/screens/success_send/success_send.dart';
import 'package:bee_app/screens/success_sign_in/success_sign_in.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
    void iosPermission() {
      _firebaseMessaging.requestNotificationPermissions(
          IosNotificationSettings(sound: true, badge: true, alert: true));
      _firebaseMessaging.onIosSettingsRegistered
          .listen((IosNotificationSettings settings) {
        print("Settings registered: $settings");
      });
    }

    if (Theme.of(context).platform == TargetPlatform.iOS) iosPermission();

    _firebaseMessaging.getToken().then((token) {
      print(token);
    });

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print('on message $message');
        showOverlayNotification((context) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: SafeArea(
              child: ListTile(
                leading: SizedBox.fromSize(
                    size: const Size(40, 40),
                    child: ClipOval(
                        child: Image.asset(
                      "assets/images/icon-card-success.png",
                    ))),
                title: Text(message["notification"]["title"]),
                subtitle: Text(message["notification"]["body"]),
                trailing: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      OverlaySupportEntry.of(context).dismiss();
                    }),
              ),
            ),
          );
        }, duration: Duration(milliseconds: 4000));
      },
      onResume: (Map<String, dynamic> message) async {
        print('on resume $message');
      },
      onLaunch: (Map<String, dynamic> message) async {
        print('on launch $message');
      },
    );

    return MultiProvider(
      providers: [
        Provider<bool>.value(value: identical(0, 0.0)),
      ],
      child: OverlaySupport(
        child: MaterialApp(
          routes: {
            '/GetStarted': (context) => GetStarted(),
            '/SignIn': (context) => SignIn(),
            '/SignUp': (context) => SignUp(),
            '/SuccessSignIn': (context) => SuccessSignIn(),
            '/MyDashboard': (context) => MyDashboard(),
            '/SendMoney': (context) => SendMoney(),
            '/Contacts': (context) => Contacts(),
            '/SuccessSend': (context) => SuccessSend(),
          },
          initialRoute: '/GetStarted',
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
