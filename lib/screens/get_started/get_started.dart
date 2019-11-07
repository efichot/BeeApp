import 'package:bee_app/screens/get_started/btn_get_started_button.dart';
import 'package:bee_app/screens/get_started/send_money_to_friend_text.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> with TickerProviderStateMixin {
  AnimationController appLogoAnimationController;
  AnimationController btnGetStartedButtonAnimationController;
  AnimationController sendMoneyToFriendTextAnimationController;

  @override
  void initState() {
    super.initState();

    this.appLogoAnimationController =
        AnimationController(duration: Duration(milliseconds: 450), vsync: this);
    this.btnGetStartedButtonAnimationController = AnimationController(
        duration: Duration(milliseconds: 1400), vsync: this);
    this.sendMoneyToFriendTextAnimationController =
        AnimationController(duration: Duration(milliseconds: 950), vsync: this);

    this.startAnimationOne();
  }

  @override
  void dispose() {
    super.dispose();

    this.appLogoAnimationController.dispose();
    this.btnGetStartedButtonAnimationController.dispose();
    this.sendMoneyToFriendTextAnimationController.dispose();
  }

  void onBtnGetStartedPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/SignIn');

  void startAnimationOne() {
    this.appLogoAnimationController.forward();
    this.btnGetStartedButtonAnimationController.forward();
    this.sendMoneyToFriendTextAnimationController.forward();
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
              width: 119,
              height: 159,
              margin: EdgeInsets.only(top: 110),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    left: 0,
                    top: 39,
                    right: -0,
                    child: Container(
                      height: 119,
                      child: Image.asset(
                        "assets/images/rectangle-copy-4-2.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 1,
                    top: 1,
                    right: 1,
                    child: Container(
                      height: 118,
                      child: Image.asset(
                        "assets/images/rectangle.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 75),
              child: sendMoneyToFriendText(
                sendMoneyToFriendTextAnimationController:
                    this.sendMoneyToFriendTextAnimationController,
              ),
            ),
            Spacer(),
            Container(
              width: 270,
              height: 45,
              margin: EdgeInsets.only(bottom: 70),
              child: btnGetStartedButton(
                onBtnGetStartedPressed: () =>
                    this.onBtnGetStartedPressed(context),
                btnGetStartedButtonAnimationController:
                    this.btnGetStartedButtonAnimationController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
