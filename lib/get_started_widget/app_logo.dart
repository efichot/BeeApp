
import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';
import 'package:supernova_flutter_ui_toolkit/transitions.dart';


class appLogo extends StatelessWidget {
  appLogo({Key key, AnimationController appLogoAnimationController}) :
    translateY = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 0),
      Keyframe<double>(fraction: 0.001, value: -200),
      Keyframe<double>(fraction: 1, value: 0),
    ]).animate(CurvedAnimation(
      parent: appLogoAnimationController,
      curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
    )),
    opacity = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 1),
      Keyframe<double>(fraction: 0.001, value: 0),
      Keyframe<double>(fraction: 1, value: 1),
    ]).animate(CurvedAnimation(
      parent: appLogoAnimationController,
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
    );
  }
}