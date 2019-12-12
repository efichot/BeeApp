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
import 'package:bee_app/services/messagingMobile.dart'
    if (dart.library.html) 'package:bee_app/services/messagingWeb.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget auth(Widget page, BuildContext context) =>
      Provider.of<InfoUser>(context) != null ? page : SignIn();

  Widget noAuth(Widget page, BuildContext context) =>
      Provider.of<InfoUser>(context) != null ? MyDashboard() : page;

  @override
  Widget build(BuildContext context) {
    notifications(context); // In-app notifications

    return OverlaySupport(
      child: MultiProvider(
        providers: [
          Provider<bool>.value(value: identical(0, 0.0)),
          StreamProvider<InfoUser>.value(
              value: AuthService().onAuthStateChanged)
        ],
        child: MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          routes: {
            '/GetStarted': (context) => noAuth(GetStarted(), context),
            '/SignIn': (context) => noAuth(SignIn(), context),
            '/SignUp': (context) => noAuth(SignUp(), context),
            '/SuccessSignIn': (context) => auth(SuccessSignIn(), context),
            '/MyDashboard': (context) => auth(MyDashboard(), context),
            '/SendMoney': (context) => auth(SendMoney(), context),
            '/Contacts': (context) => auth(Contacts(), context),
            '/SuccessSend': (context) => auth(SuccessSend(), context),
          },
          initialRoute: '/GetStarted',
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
