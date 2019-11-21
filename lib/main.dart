import 'package:bee_app/models/user.dart';
import 'package:bee_app/screens/contacts/contacts.dart';
import 'package:bee_app/screens/get_started/get_started.dart';
import 'package:bee_app/screens/my_dashboard/my_dashboard.dart';
import 'package:bee_app/screens/send_money/send_money.dart';
import 'package:bee_app/screens/sign_in/sign_in.dart';
import 'package:bee_app/screens/sign_up/sign_up.dart';
import 'package:bee_app/screens/success_send/success_send.dart';
import 'package:bee_app/screens/success_sign_in/success_sign_in.dart';
import 'package:bee_app/services/authMobile.dart'
    if (dart.library.html) 'package:bee_app/services/authWeb.dart';
import 'package:bee_app/services/messaging.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    messaging(context); // In-app notifications on mobile

    _protectedNoAuth(BuildContext context, Widget page) {
      InfoUser user = Provider.of<InfoUser>(context);
      if (user == null) {
        return page;
      }
      return MyDashboard();
    }

    Widget _protectedAuth(BuildContext context, Widget page) {
      InfoUser user = Provider.of<InfoUser>(context);
      if (user != null) {
        return page;
      }
      return SignIn();
    }

    return MultiProvider(
      providers: [
        Provider<bool>.value(value: identical(0, 0.0)),
        StreamProvider<InfoUser>.value(value: AuthService().onAuthStateChanged),
      ],
      child: OverlaySupport(
          child: MaterialApp(
        routes: {
          '/GetStarted': (context) => _protectedNoAuth(context, GetStarted()),
          '/SignIn': (context) => _protectedNoAuth(context, SignIn()),
          '/SignUp': (context) => _protectedNoAuth(context, SignUp()),
          '/SuccessSignIn': (context) =>
              _protectedAuth(context, SuccessSignIn()),
          '/MyDashboard': (context) => _protectedAuth(context, MyDashboard()),
          '/SendMoney': (context) => _protectedAuth(context, SendMoney()),
          '/Contacts': (context) => _protectedAuth(context, Contacts()),
          '/SuccessSend': (context) => _protectedAuth(context, SuccessSend()),
        },
        initialRoute: '/GetStarted',
        debugShowCheckedModeBanner: false,
      )),
    );
  }
}
