import 'package:bee_app/services/authMobile.dart'
    if (dart.library.html) 'package:bee_app/services/authWeb.dart';
import 'package:flutter/material.dart';

class SignOut extends StatelessWidget {
  const SignOut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 59,
      top: 9,
      child: IconButton(
        icon: Icon(Icons.exit_to_app),
        color: Colors.white,
        tooltip: 'Sign Out',
        onPressed: () {
          AuthService().signOut();
        },
      ),
    );
  }
}
