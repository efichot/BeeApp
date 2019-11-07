
import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';
import 'package:supernova_flutter_ui_toolkit/transitions.dart';


class card extends StatelessWidget {
  card({Key key, AnimationController cardAnimationController}) :
    translateY = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 0),
      Keyframe<double>(fraction: 0.001, value: -200),
      Keyframe<double>(fraction: 1, value: 0),
    ]).animate(CurvedAnimation(
      parent: cardAnimationController,
      curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
    )),
    opacity = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 1),
      Keyframe<double>(fraction: 0.001, value: 0),
      Keyframe<double>(fraction: 1, value: 1),
    ]).animate(CurvedAnimation(
      parent: cardAnimationController,
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
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(38, 0, 0, 0),
                offset: Offset(0, 4),
                blurRadius: 15,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                left: 16,
                top: 16,
                right: 21,
                bottom: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "US\$ 200,381",
                        style: TextStyle(
                          color: Color.fromARGB(255, 39, 34, 106),
                          fontSize: 18,
                          fontFamily: "",
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Text(
                          "+40%",
                          style: TextStyle(
                            color: Color.fromARGB(255, 26, 188, 156),
                            fontSize: 12,
                            fontFamily: "",
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 73,
                      margin: EdgeInsets.only(top: 13),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 0,
                            top: 12,
                            right: 0,
                            child: Container(
                              height: 61,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 245, 245, 245),
                                    ),
                                    child: Container(),
                                  ),
                                  Container(
                                    height: 1,
                                    margin: EdgeInsets.only(top: 29),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 245, 245, 245),
                                    ),
                                    child: Container(),
                                  ),
                                  Container(
                                    height: 1,
                                    margin: EdgeInsets.only(top: 29),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 245, 245, 245),
                                    ),
                                    child: Container(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 0,
                            right: 17,
                            child: Container(
                              height: 73,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 20,
                                      height: 53,
                                      margin: EdgeInsets.only(top: 20),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 252, 146, 157),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 20,
                                      height: 22,
                                      margin: EdgeInsets.only(left: 2, top: 51),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 148, 143, 254),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 20,
                                      height: 47,
                                      margin: EdgeInsets.only(left: 68, top: 26),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 148, 143, 254),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 20,
                                      height: 31,
                                      margin: EdgeInsets.only(top: 42, right: 59),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 253, 178, 156),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 20,
                                      height: 47,
                                      margin: EdgeInsets.only(top: 26, right: 2),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 252, 146, 157),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 20,
                                      height: 73,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 46, 203, 167),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 15,
                      margin: EdgeInsets.only(left: 20, right: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Sun",
                              style: TextStyle(
                                color: Color.fromARGB(255, 170, 170, 170),
                                fontSize: 12,
                                fontFamily: "",
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Fri",
                              style: TextStyle(
                                color: Color.fromARGB(255, 170, 170, 170),
                                fontSize: 12,
                                fontFamily: "",
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 16,
                child: Text(
                  "Thu",
                  style: TextStyle(
                    color: Color.fromARGB(255, 170, 170, 170),
                    fontSize: 12,
                    fontFamily: "",
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}