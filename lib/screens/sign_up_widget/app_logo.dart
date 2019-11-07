
import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';


class appLogo extends StatelessWidget {
  appLogo({Key key, AnimationController appLogoAnimationController}) :
    scale = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 1),
      Keyframe<double>(fraction: 0.001, value: 0),
      Keyframe<double>(fraction: 1, value: 1),
    ]).animate(CurvedAnimation(
      parent: appLogoAnimationController,
      curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
    )),
  super(key: key);
  Animation<double> scale;
  
  @override
  Widget build(BuildContext context) {
  
    return ScaleTransition(
      scale: this.scale,
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
    );
  }
}