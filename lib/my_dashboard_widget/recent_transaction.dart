
import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';
import 'package:supernova_flutter_ui_toolkit/transitions.dart';


class recentTransaction extends StatelessWidget {
  recentTransaction({Key key, AnimationController recentTransactionAnimationController}) :
    translateY = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 0),
      Keyframe<double>(fraction: 0.001, value: 200),
      Keyframe<double>(fraction: 1, value: 0),
    ]).animate(CurvedAnimation(
      parent: recentTransactionAnimationController,
      curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
    )),
    opacity = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 1),
      Keyframe<double>(fraction: 0.001, value: 0),
      Keyframe<double>(fraction: 1, value: 1),
    ]).animate(CurvedAnimation(
      parent: recentTransactionAnimationController,
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Recent Transactions",
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 110, 145),
                  fontSize: 16,
                  fontFamily: "",
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(top: 17),
              child: Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    child: Image.asset(
                      "assets/images/user-pic-2.png",
                      fit: BoxFit.none,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 87,
                      height: 35,
                      margin: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Julia Ambarita",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 13,
                                fontFamily: "",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 6),
                              child: Text(
                                "+ IDR 209.309",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 26, 188, 156),
                                  fontSize: 11,
                                  fontFamily: "",
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Jan 20, 2019",
                    style: TextStyle(
                      color: Color.fromARGB(255, 116, 110, 145),
                      fontSize: 11,
                      fontFamily: "",
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 40,
              child: Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    child: Image.asset(
                      "assets/images/user-pic-5.png",
                      fit: BoxFit.none,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 73,
                      height: 35,
                      margin: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Ali Fajar",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 13,
                                fontFamily: "",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 6),
                              child: Text(
                                "- IDR 100.000",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 252, 146, 157),
                                  fontSize: 11,
                                  fontFamily: "",
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Aug 22, 2018",
                    style: TextStyle(
                      color: Color.fromARGB(255, 116, 110, 145),
                      fontSize: 11,
                      fontFamily: "",
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.right,
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