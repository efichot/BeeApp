import 'dart:html' if (dart.library.io) 'package:bee_app/models/mobile.dart';

import 'package:bee_app/services/authMobile.dart'
    if (dart.library.html) 'package:bee_app/services/authWeb.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignOut extends StatelessWidget {
  const SignOut({Key key}) : super(key: key);

  _signOut(BuildContext context) {
    try {
      AuthService().signOut();
      if (Provider.of<bool>(context))
        window.history.pushState(null, null, '/#/SignIn');
      Navigator.of(context).pushNamedAndRemoveUntil('/SignIn', (e) => false);
    } catch (e) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message),
          action: SnackBarAction(
            label: 'Retry',
            onPressed: () {
              _signOut(context);
            },
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Positioned(
        right: 59,
        top: 9,
        child: IconButton(
          icon: Icon(Icons.exit_to_app),
          color: Colors.white,
          tooltip: 'Sign Out',
          onPressed: () {
            _signOut(context);
          },
        ),
      );
    });
  }
}
