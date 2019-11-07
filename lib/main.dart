import 'package:bee_app/screens/contacts_widget/contacts_widget.dart';
import 'package:bee_app/screens/get_started_widget/get_started_widget.dart';
import 'package:bee_app/screens/my_dashboard_widget/my_dashboard_widget.dart';
import 'package:bee_app/screens/send_money_widget/send_money_widget.dart';
import 'package:bee_app/screens/sign_in_widget/sign_in_widget.dart';
import 'package:bee_app/screens/sign_up_widget/sign_up_widget.dart';
import 'package:bee_app/screens/success_send_widget/success_send_widget.dart';
import 'package:bee_app/screens/success_sign_in_widget/success_sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<bool>.value(value: identical(0, 0.0)),
      ],
      child: MaterialApp(
        routes: {
          '/GetStarted': (context) => GetStartedWidget(),
          '/SignIn': (context) => SignInWidget(),
          '/SignUp': (context) => SignUpWidget(),
          '/SuccessSignIn': (context) => SuccessSignInWidget(),
          '/MyDashboard': (context) => MyDashboardWidget(),
          '/SendMoney': (context) => SendMoneyWidget(),
          '/Contacts': (context) => ContactsWidget(),
          '/SuccessSend': (context) => SuccessSendWidget(),
        },
        initialRoute: '/GetStarted',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
