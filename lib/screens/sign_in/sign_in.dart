import 'package:bee_app/models/user.dart';
import 'package:bee_app/screens/sign_in/btn_sign_in_button.dart';
import 'package:bee_app/screens/sign_in/btn_sign_up_button.dart';
import 'package:bee_app/screens/sign_in/email_address.dart';
import 'package:bee_app/screens/sign_in/password.dart';
import 'package:bee_app/services/authMobile.dart'
    if (dart.library.html) 'package:bee_app/services/authWeb.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State<SignIn> with TickerProviderStateMixin {
  AnimationController appLogoAnimationController;
  AnimationController emailAddressAnimationController;
  AnimationController passwordAnimationController;
  AnimationController btnSignInButtonAnimationController;
  AnimationController btnSignUpButtonAnimationController;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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

  void onBtnGetStartedPressed(
      BuildContext context, String email, String password) async {
    try {
      InfoUser user =
          await AuthService().signInWithEmailAndPassword(email, password);
      if (user != null) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/SuccessSignIn', (e) => false);
      }
    } catch (e) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(e.message),
        action: SnackBarAction(
          label: 'Retry',
          onPressed: () {
            onBtnGetStartedPressed(context, email, password);
          },
        ),
      ));
    }
  }

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
                margin: EdgeInsets.only(top: 194),
                child: emailAddress(
                  emailController: emailController,
                  emailAddressAnimationController:
                      this.emailAddressAnimationController,
                ),
              ),
              Container(
                width: 312,
                height: 77,
                margin: EdgeInsets.only(top: 15),
                child: password(
                  passwordController: passwordController,
                  passwordAnimationController: this.passwordAnimationController,
                ),
              ),
              Spacer(),
              Container(
                width: 270,
                height: 45,
                margin: EdgeInsets.only(bottom: 6),
                child: btnSignInButton(
                  onBtnGetStartedPressed: () => this.onBtnGetStartedPressed(
                      context,
                      this.emailController.text,
                      this.passwordController.text),
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
          );
        }),
      ),
    );
  }
}
