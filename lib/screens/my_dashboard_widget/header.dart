
import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';
import 'package:supernova_flutter_ui_toolkit/transitions.dart';


class header extends StatelessWidget {
  header({Key key, AnimationController headerAnimationController}) :
    translateY = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 0),
      Keyframe<double>(fraction: 0.001, value: -200),
      Keyframe<double>(fraction: 1, value: 0),
    ]).animate(CurvedAnimation(
      parent: headerAnimationController,
      curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
    )),
    opacity = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 1),
      Keyframe<double>(fraction: 0.001, value: 0),
      Keyframe<double>(fraction: 1, value: 1),
    ]).animate(CurvedAnimation(
      parent: headerAnimationController,
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
          alignment: Alignment.centerLeft,
          children: [
            Positioned(
              left: 0,
              right: 172,
              child: Text(
                "Dashboard",
                style: TextStyle(
                  color: Color.fromARGB(255, 35, 27, 71),
                  fontSize: 150,
                  fontFamily: "",
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Positioned(
              left: 59,
              top: 9,
              child: Container(
                width: 240,
                height: 56,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 160,
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 26,
                            fontFamily: "",
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          "All reports updated automatically",
                          style: TextStyle(
                            color: Color.fromARGB(255, 117, 110, 145),
                            fontSize: 16,
                            fontFamily: "",
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}