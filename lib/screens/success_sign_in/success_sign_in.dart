import 'package:bee_app/screens/success_sign_in/btn_dashboard_button.dart';
import 'package:bee_app/screens/success_sign_in/icon_user.dart';
import 'package:bee_app/screens/success_sign_in/view_two.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class SuccessSignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SuccessSignInState();
}

class _SuccessSignInState extends State<SuccessSignIn>
    with TickerProviderStateMixin {
  AnimationController iconUserAnimationController;
  AnimationController viewTwoAnimationController;
  AnimationController btnDashboardButtonAnimationController;

  @override
  void initState() {
    super.initState();

    this.iconUserAnimationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    this.viewTwoAnimationController =
        AnimationController(duration: Duration(milliseconds: 850), vsync: this);
    this.btnDashboardButtonAnimationController = AnimationController(
        duration: Duration(milliseconds: 1350), vsync: this);

    this.startAnimationOne();
  }

  @override
  void dispose() {
    super.dispose();

    this.iconUserAnimationController.dispose();
    this.viewTwoAnimationController.dispose();
    this.btnDashboardButtonAnimationController.dispose();
  }

  void onBtnDashboardPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/MyDashboard');

  void startAnimationOne() {
    this.iconUserAnimationController.forward();
    this.viewTwoAnimationController.forward();
    this.btnDashboardButtonAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 27, 19, 63),
        ),
        child: Column(
          children: [
            Container(
              width: 136,
              height: 136,
              margin: EdgeInsets.only(top: 103),
              child: iconUser(
                iconUserAnimationController: this.iconUserAnimationController,
              ),
            ),
            Container(
              width: 250,
              height: 132,
              margin: EdgeInsets.only(top: 56),
              child: viewTwo(
                viewTwoAnimationController: this.viewTwoAnimationController,
              ),
            ),
            Spacer(),
            Container(
              width: 270,
              height: 45,
              margin: EdgeInsets.only(bottom: 70),
              child: btnDashboardButton(
                onBtnDashboardPressed: () =>
                    this.onBtnDashboardPressed(context),
                btnDashboardButtonAnimationController:
                    this.btnDashboardButtonAnimationController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
