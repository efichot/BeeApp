import 'package:bee_app/sign_in_widget/btn_sign_in_button.dart';
import 'package:bee_app/sign_in_widget/btn_sign_up_button.dart';
import 'package:bee_app/sign_in_widget/email_address.dart';
import 'package:bee_app/sign_in_widget/password.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class SignInWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget>
    with TickerProviderStateMixin {
  AnimationController appLogoAnimationController;
  AnimationController emailAddressAnimationController;
  AnimationController passwordAnimationController;
  AnimationController btnSignInButtonAnimationController;
  AnimationController btnSignUpButtonAnimationController;

  @override
  void initState() {
    super.initState();

    this.appLogoAnimationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    this.emailAddressAnimationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    this.passwordAnimationController =
        AnimationController(duration: Duration(milliseconds: 850), vsync: this);
    this.btnSignInButtonAnimationController = AnimationController(
        duration: Duration(milliseconds: 1200), vsync: this);
    this.btnSignUpButtonAnimationController = AnimationController(
        duration: Duration(milliseconds: 1550), vsync: this);

    this.startAnimationOne();
  }

  @override
  void dispose() {
    super.dispose();

    this.appLogoAnimationController.dispose();
    this.emailAddressAnimationController.dispose();
    this.passwordAnimationController.dispose();
    this.btnSignInButtonAnimationController.dispose();
    this.btnSignUpButtonAnimationController.dispose();
  }

  void onBtnGetStartedPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/SuccessSignIn');

  void onBtnGetStartedTwoPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/SignUp');

  void startAnimationOne() {
    this.appLogoAnimationController.forward();
    this.emailAddressAnimationController.forward();
    this.passwordAnimationController.forward();
    this.btnSignInButtonAnimationController.forward();
    this.btnSignUpButtonAnimationController.forward();
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
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 60,
                height: 80,
                margin: EdgeInsets.only(left: 20, top: 8),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      left: 0,
                      top: 20,
                      right: -0,
                      child: Container(
                        height: 60,
                        child: Image.asset(
                          "assets/images/rectangle-copy-4.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 59,
                        child: Image.asset(
                          "assets/images/rectangle-3.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 312,
              height: 77,
              margin: EdgeInsets.only(top: 194),
              child: emailAddress(
                emailAddressAnimationController:
                    this.emailAddressAnimationController,
              ),
            ),
            Container(
              width: 312,
              height: 77,
              margin: EdgeInsets.only(top: 15),
              child: password(
                passwordAnimationController: this.passwordAnimationController,
              ),
            ),
            Spacer(),
            Container(
              width: 270,
              height: 45,
              margin: EdgeInsets.only(bottom: 6),
              child: btnSignInButton(
                onBtnGetStartedPressed: () =>
                    this.onBtnGetStartedPressed(context),
                btnSignInButtonAnimationController:
                    this.btnSignInButtonAnimationController,
              ),
            ),
            Container(
              width: 270,
              height: 45,
              margin: EdgeInsets.only(bottom: 19),
              child: btnSignUpButton(
                onBtnGetStartedTwoPressed: () =>
                    this.onBtnGetStartedTwoPressed(context),
                btnSignUpButtonAnimationController:
                    this.btnSignUpButtonAnimationController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
