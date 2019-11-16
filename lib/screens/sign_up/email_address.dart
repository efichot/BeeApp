import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';
import 'package:supernova_flutter_ui_toolkit/transitions.dart';

class emailAddress extends StatelessWidget {
  emailAddress(
      {Key key,
      AnimationController emailAddressAnimationController,
      TextEditingController emailController})
      : translateY = Interpolation<double>(keyframes: [
          Keyframe<double>(fraction: 0, value: 0),
          Keyframe<double>(fraction: 0.001, value: 200),
          Keyframe<double>(fraction: 1, value: 0),
        ]).animate(CurvedAnimation(
          parent: emailAddressAnimationController,
          curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
        )),
        opacity = Interpolation<double>(keyframes: [
          Keyframe<double>(fraction: 0, value: 1),
          Keyframe<double>(fraction: 0.001, value: 0),
          Keyframe<double>(fraction: 1, value: 1),
        ]).animate(CurvedAnimation(
          parent: emailAddressAnimationController,
          curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
        )),
        emailController = emailController,
        super(key: key);
  Animation<double> translateY;
  Animation<double> opacity;
  TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: this.opacity,
      child: TranslationTransition(
        translationY: this.translateY,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Email Address",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(top: 13),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 43, 32, 90),
                        border: Border.all(
                          color: Color.fromARGB(255, 93, 81, 144),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 13,
                    top: 0,
                    child: Container(
                      width: 291,
                      height: 60,
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "a@bcd.com",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 92, 80, 144),
                          ),
                          contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color.fromARGB(255, 92, 80, 144),
                          fontSize: 16,
                          height: 1.5,
                          fontFamily: "Montserrat",
                        ),
                        maxLines: 1,
                        autocorrect: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
