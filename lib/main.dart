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

    return MultiProvider(
      providers: [
        StreamProvider<InfoUser>.value(value: AuthService().onAuthStateChanged)
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
