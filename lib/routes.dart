import 'package:bee_app/screens/contacts/contacts.dart';
import 'package:bee_app/screens/get_started/get_started.dart';
import 'package:bee_app/screens/my_dashboard/my_dashboard.dart';
import 'package:bee_app/screens/send_money/send_money.dart';
import 'package:bee_app/screens/sign_in/sign_in.dart';
import 'package:bee_app/screens/sign_up/sign_up.dart';
import 'package:bee_app/screens/success_send/success_send.dart';
import 'package:bee_app/screens/success_sign_in/success_sign_in.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> routes(RouteSettings settings) {
    switch (settings.name) {
      case '/GetStarted':
        return MaterialPageRoute(
            builder: (context) => GetStarted(),
            settings: RouteSettings(name: '/GetStarted'));
      case '/SignIn':
        return MaterialPageRoute(
            builder: (context) => SignIn(),
            settings: RouteSettings(name: '/SignIn'));
      case '/SignUp':
        return MaterialPageRoute(
            builder: (context) => SignUp(),
            settings: RouteSettings(name: '/SignUp'));
      case '/SuccessSignIn':
        return MaterialPageRoute(
            builder: (context) => SuccessSignIn(),
            settings: RouteSettings(name: '/SuccessSignIn'));
      case '/MyDashboard':
        return MaterialPageRoute(
            builder: (context) => MyDashboard(),
            settings: RouteSettings(name: '/MyDashboard'));
      case '/SendMoney':
        return MaterialPageRoute(
            builder: (context) => SendMoney(),
            settings: RouteSettings(name: '/SendMoney'));
      case '/Contacts':
        return MaterialPageRoute(
            builder: (context) => Contacts(),
            settings: RouteSettings(name: '/Contacts'));
      case '/SuccessSend':
        return MaterialPageRoute(
            builder: (context) => SuccessSend(),
            settings: RouteSettings(name: '/SuccessSend'));
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Error'),
            ),
            body: Center(
              child: Text('ERROR'),
            ),
          );
        });
    }
  }

  static Route<dynamic> _errorRoute() {}
}
