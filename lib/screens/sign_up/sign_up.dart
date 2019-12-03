import 'package:bee_app/models/user.dart';
import 'package:bee_app/screens/sign_up/btn_sign_in_button.dart';
import 'package:bee_app/screens/sign_up/btn_sign_up_button.dart';
import 'package:bee_app/screens/sign_up/btn_sign_up_with_google_button.dart';
import 'package:bee_app/screens/sign_up/email_address.dart';
import 'package:bee_app/screens/sign_up/password.dart';
import 'package:bee_app/screens/sign_up/username.dart';
import 'package:bee_app/services/authMobile.dart'
    if (dart.library.html) 'package:bee_app/services/authWeb.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with TickerProviderStateMixin {
  AnimationController appLogoAnimationController;
  AnimationController usernameAnimationController;
  AnimationController passwordAnimationController;
  AnimationController emailAddressAnimationController;
  AnimationController btnSignUpButtonAnimationController;
  AnimationController btnSignInButtonAnimationController;
  AnimationController btnSignUpWithGoogleButtonAnimationController;
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    this.appLogoAnimationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    this.usernameAnimationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    this.passwordAnimationController =
        AnimationController(duration: Duration(milliseconds: 850), vsync: this);
    this.emailAddressAnimationController = AnimationController(
        duration: Duration(milliseconds: 1150), vsync: this);
    this.btnSignUpButtonAnimationController = AnimationController(
        duration: Duration(milliseconds: 1450), vsync: this);
    this.btnSignInButtonAnimationController = AnimationController(
        duration: Duration(milliseconds: 1650), vsync: this);
    this.btnSignUpWithGoogleButtonAnimationController = AnimationController(
        duration: Duration(milliseconds: 1900), vsync: this);

    this.startAnimationOne();
  }

  @override
  void dispose() {
    this.appLogoAnimationController.dispose();
    this.usernameAnimationController.dispose();
    this.passwordAnimationController.dispose();
    this.emailAddressAnimationController.dispose();
    this.btnSignUpButtonAnimationController.dispose();
    this.btnSignInButtonAnimationController.dispose();
    this.btnSignUpWithGoogleButtonAnimationController.dispose();
    super.dispose();
  }

  void onBtnGetStartedPressed(
      String email, String password, BuildContext context) async {
    try {
      InfoUser user =
          await AuthService().createUserWithEmailAndPassword(email, password);
      if (user != null) {
        Navigator.pushNamed(context, '/MyDashboard');
      }
    } catch (e) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message),
          action: SnackBarAction(
            label: 'Retry',
            onPressed: () {
              onBtnGetStartedPressed(email, password, context);
            },
          ),
        ),
      );
    }
  }

  void onBtnGetStartedTwoPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/SignIn');

  void onBtnGetStartedThreePressed(BuildContext context) async {
    try {
      InfoUser user = await AuthService().signInWithGoogle();
      if (user != null) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/MyDashboard', (e) => false);
      }
    } catch (e) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message),
          action: SnackBarAction(
            label: 'Retry',
            onPressed: () {
              onBtnGetStartedThreePressed(context);
            },
          ),
        ),
      );
    }
  }

  void startAnimationOne() {
    this.appLogoAnimationController.forward();
    this.usernameAnimationController.forward();
    this.passwordAnimationController.forward();
    this.emailAddressAnimationController.forward();
    this.btnSignUpButtonAnimationController.forward();
    this.btnSignInButtonAnimationController.forward();
    this.btnSignUpWithGoogleButtonAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 27, 19, 63),
        ),
        child: Builder(builder: (context) {
          return Column(
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
                margin: EdgeInsets.only(top: 68),
                child: username(
                  usernameAnimationController: this.usernameAnimationController,
                  usernameController: this.usernameController,
                ),
              ),
              Container(
                width: 312,
                height: 77,
                margin: EdgeInsets.only(top: 30),
                child: password(
                  passwordAnimationController: this.passwordAnimationController,
                  passwordController: this.passwordController,
                ),
              ),
              Container(
                width: 312,
                height: 77,
                margin: EdgeInsets.only(top: 30),
                child: emailAddress(
                  emailAddressAnimationController:
                      this.emailAddressAnimationController,
                  emailController: this.emailController,
                ),
              ),
              Spacer(),
              Container(
                width: 270,
                height: 45,
                margin: EdgeInsets.only(bottom: 6),
                child: btnSignUpButton(
                  onBtnGetStartedPressed: () => this.onBtnGetStartedPressed(
                      this.emailController.text,
                      this.passwordController.text,
                      context),
                  btnSignUpButtonAnimationController:
                      this.btnSignUpButtonAnimationController,
                ),
              ),
              Container(
                width: 270,
                height: 45,
                margin: EdgeInsets.only(bottom: 6),
                child: btnSignInButton(
                  onBtnGetStartedTwoPressed: () =>
                      this.onBtnGetStartedTwoPressed(context),
                  btnSignInButtonAnimationController:
                      this.btnSignInButtonAnimationController,
                ),
              ),
              Container(
                width: 270,
                height: 45,
                margin: EdgeInsets.only(bottom: 18),
                child: btnSignUpWithGoogleButton(
                  onBtnGetStartedThreePressed: () =>
                      this.onBtnGetStartedThreePressed(context),
                  btnSignUpWithGoogleButtonAnimationController:
                      this.btnSignUpWithGoogleButtonAnimationController,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
