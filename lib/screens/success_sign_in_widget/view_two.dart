import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';
import 'package:supernova_flutter_ui_toolkit/transitions.dart';

class viewTwo extends StatelessWidget {
  viewTwo({Key key, AnimationController viewTwoAnimationController})
      : translateY = Interpolation<double>(keyframes: [
          Keyframe<double>(fraction: 0, value: 0),
          Keyframe<double>(fraction: 0.001, value: 200),
          Keyframe<double>(fraction: 1, value: 0),
        ]).animate(CurvedAnimation(
          parent: viewTwoAnimationController,
          curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
        )),
        opacity = Interpolation<double>(keyframes: [
          Keyframe<double>(fraction: 0, value: 1),
          Keyframe<double>(fraction: 0.001, value: 0),
          Keyframe<double>(fraction: 1, value: 1),
        ]).animate(CurvedAnimation(
          parent: viewTwoAnimationController,
          curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
        )),
        super(key: key);
  Animation<double> translateY;
  Animation<double> opacity;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: this.opacity,
      child: TranslationTransition(
        translationY: this.translateY,
        child: Column(
          children: [
            Text(
              "Congratulations",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 23,
                fontFamily: "",
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 17),
              child: Text(
                "Your account has been\ncreated now",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                  fontFamily: "",
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
