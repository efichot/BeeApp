import 'package:bee_app/contacts_widget/contacts_widget.dart';
import 'package:bee_app/get_started_widget/get_started_widget.dart';
import 'package:bee_app/my_dashboard_widget/my_dashboard_widget.dart';
import 'package:bee_app/send_money_widget/send_money_widget.dart';
import 'package:bee_app/sign_in_widget/sign_in_widget.dart';
import 'package:bee_app/sign_up_widget/sign_up_widget.dart';
import 'package:bee_app/success_send_widget/success_send_widget.dart';
import 'package:bee_app/success_sign_in_widget/success_sign_in_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
