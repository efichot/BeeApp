import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';
import 'package:supernova_flutter_ui_toolkit/transitions.dart';

class btnGetStartedButton extends StatelessWidget {
  btnGetStartedButton(
      {Key key,
      this.onBtnGetStartedPressed,
      AnimationController btnGetStartedButtonAnimationController})
      : translateY = Interpolation<double>(keyframes: [
          Keyframe<double>(fraction: 0, value: 0),
          Keyframe<double>(fraction: 0.001, value: 200),
          Keyframe<double>(fraction: 1, value: 0),
        ]).animate(CurvedAnimation(
          parent: btnGetStartedButtonAnimationController,
          curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
        )),
        opacity = Interpolation<double>(keyframes: [
          Keyframe<double>(fraction: 0, value: 1),
          Keyframe<double>(fraction: 0.001, value: 0),
          Keyframe<double>(fraction: 1, value: 1),
        ]).animate(CurvedAnimation(
          parent: btnGetStartedButtonAnimationController,
          curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
        )),
        super(key: key);
  VoidCallback onBtnGetStartedPressed;
  Animation<double> translateY;
  Animation<double> opacity;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: this.opacity,
      child: TranslationTransition(
        translationY: this.translateY,
        child: FlatButton(
          onPressed: this.onBtnGetStartedPressed,
          color: Color.fromARGB(255, 0, 145, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(22.5)),
          ),
          textColor: Color.fromARGB(255, 255, 255, 255),
          padding: EdgeInsets.all(0),
          child: Text(
            "GET STARTED",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "",
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
