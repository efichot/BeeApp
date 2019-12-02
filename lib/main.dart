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
  Widget _protectedNoAuth(Widget page) {
    print('protected no auth');

    return FutureBuilder<InfoUser>(
      future: AuthService().currentUser(),
      initialData: null,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            // window.history.replaceState(null, null, '/#/MyDashboard');
            return MyDashboard();
          }
          return page;
        }
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }

  Widget _protectedAuth(Widget page) {
    print('protected auth');

    return FutureBuilder<InfoUser>(
      future: AuthService().currentUser(),
      initialData: null,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            print('protect auth and snapshot have data');
            // window.history.replaceState(null, null, '/#/SignIn');
            return page;
          }
          print('protect auth and snapshot have no data');

          return SignIn();
        }
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    messaging(context); // In-app notifications on mobile

    return MultiProvider(
      providers: [
        Provider<bool>.value(value: identical(0, 0.0)),
        StreamProvider<InfoUser>.value(value: AuthService().onAuthStateChanged),
      ],
      child: OverlaySupport(
          child: MaterialApp(
        routes: {
          '/GetStarted': (context) => _protectedNoAuth(GetStarted()),
          '/SignIn': (context) => _protectedNoAuth(SignIn()),
          '/SignUp': (context) => _protectedNoAuth(SignUp()),
          '/SuccessSignIn': (context) => _protectedAuth(SuccessSignIn()),
          '/MyDashboard': (context) => _protectedAuth(MyDashboard()),
          '/SendMoney': (context) => _protectedAuth(SendMoney()),
          '/Contacts': (context) => _protectedAuth(Contacts()),
          '/SuccessSend': (context) => _protectedAuth(SuccessSend()),
        },
        initialRoute: '/GetStarted',
        debugShowCheckedModeBanner: false,
      )),
    );
  }
}
