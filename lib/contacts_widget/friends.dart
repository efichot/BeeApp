
import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';
import 'package:supernova_flutter_ui_toolkit/transitions.dart';


class friends extends StatelessWidget {
  friends({Key key, this.onBtnSendPressed, AnimationController friendsAnimationController}) :
    translateY = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 0),
      Keyframe<double>(fraction: 0.001, value: 200),
      Keyframe<double>(fraction: 1, value: 0),
    ]).animate(CurvedAnimation(
      parent: friendsAnimationController,
      curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
    )),
    opacity = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 1),
      Keyframe<double>(fraction: 0.001, value: 0),
      Keyframe<double>(fraction: 1, value: 1),
    ]).animate(CurvedAnimation(
      parent: friendsAnimationController,
      curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
    )),
  super(key: key);
  VoidCallback onBtnSendPressed;
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
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 16,
                  top: 16,
                  right: 23,
                  bottom: -76,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 52,
                        child: Row(
                          children: [
                            Container(
                              width: 57,
                              height: 54,
                              child: Image.asset(
                                "assets/images/user-pic-8.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 64,
                                height: 35,
                                margin: EdgeInsets.only(left: 11, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Anna Bella",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 38, 34, 105),
                                          fontSize: 13,
                                          fontFamily: "",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          "@abelle",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 154, 154, 154),
                                            fontSize: 13,
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
                            Container(
                              width: 61,
                              height: 22,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 9,
                                    right: 9,
                                    bottom: 0,
                                    child: Container(
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(89, 0, 145, 255),
                                            offset: Offset(0, 2),
                                            blurRadius: 12,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(Radius.circular(3.866)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 22,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        borderRadius: BorderRadius.all(Radius.circular(10.873)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    right: 18,
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 11,
                                        fontFamily: "",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 57,
                              height: 54,
                              child: Image.asset(
                                "assets/images/user-pic-7.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 66,
                                height: 35,
                                margin: EdgeInsets.only(left: 11, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Fiona Fynn",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 38, 34, 105),
                                          fontSize: 13,
                                          fontFamily: "",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          "@fionafyn",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 154, 154, 154),
                                            fontSize: 13,
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
                            Container(
                              width: 61,
                              height: 22,
                              child: FlatButton(
                                onPressed: this.onBtnSendPressed,
                                color: Color.fromARGB(255, 0, 145, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.873)),
                                ),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "ADD",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: "",
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        margin: EdgeInsets.only(top: 16),
                        child: Row(
                          children: [
                            Container(
                              width: 57,
                              height: 54,
                              child: Image.asset(
                                "assets/images/user-pic-8.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 64,
                                height: 35,
                                margin: EdgeInsets.only(left: 11, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Anna Bella",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 38, 34, 105),
                                          fontSize: 13,
                                          fontFamily: "",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          "@abelle",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 154, 154, 154),
                                            fontSize: 13,
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
                            Container(
                              width: 61,
                              height: 22,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 9,
                                    right: 9,
                                    bottom: 0,
                                    child: Container(
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(89, 0, 145, 255),
                                            offset: Offset(0, 2),
                                            blurRadius: 12,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(Radius.circular(3.866)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 22,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        borderRadius: BorderRadius.all(Radius.circular(10.873)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    right: 18,
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 11,
                                        fontFamily: "",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        margin: EdgeInsets.only(top: 16),
                        child: Row(
                          children: [
                            Container(
                              width: 57,
                              height: 54,
                              child: Image.asset(
                                "assets/images/user-pic-9.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 66,
                                height: 35,
                                margin: EdgeInsets.only(left: 11, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Fiona Fynn",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 38, 34, 105),
                                          fontSize: 13,
                                          fontFamily: "",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          "@fionafyn",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 154, 154, 154),
                                            fontSize: 13,
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
                            Container(
                              width: 61,
                              height: 22,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 9,
                                    right: 9,
                                    bottom: 0,
                                    child: Container(
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(89, 0, 145, 255),
                                            offset: Offset(0, 2),
                                            blurRadius: 12,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(Radius.circular(3.866)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 22,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        borderRadius: BorderRadius.all(Radius.circular(10.873)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    right: 18,
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 11,
                                        fontFamily: "",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        margin: EdgeInsets.only(top: 83),
                        child: Row(
                          children: [
                            Container(
                              width: 57,
                              height: 54,
                              child: Image.asset(
                                "assets/images/user-pic-9.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 66,
                                height: 35,
                                margin: EdgeInsets.only(left: 11, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Fiona Fynn",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 38, 34, 105),
                                          fontSize: 13,
                                          fontFamily: "",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          "@fionafyn",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 154, 154, 154),
                                            fontSize: 13,
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
                            Container(
                              width: 61,
                              height: 22,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 9,
                                    right: 9,
                                    bottom: 0,
                                    child: Container(
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(89, 0, 145, 255),
                                            offset: Offset(0, 2),
                                            blurRadius: 12,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(Radius.circular(3.866)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 22,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        borderRadius: BorderRadius.all(Radius.circular(10.873)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    right: 18,
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 11,
                                        fontFamily: "",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        margin: EdgeInsets.only(top: 16),
                        child: Row(
                          children: [
                            Container(
                              width: 57,
                              height: 54,
                              child: Image.asset(
                                "assets/images/user-pic-8.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 64,
                                height: 35,
                                margin: EdgeInsets.only(left: 11, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Anna Bella",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 38, 34, 105),
                                          fontSize: 13,
                                          fontFamily: "",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          "@abelle",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 154, 154, 154),
                                            fontSize: 13,
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
                            Container(
                              width: 61,
                              height: 22,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 9,
                                    right: 9,
                                    bottom: 0,
                                    child: Container(
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(89, 0, 145, 255),
                                            offset: Offset(0, 2),
                                            blurRadius: 12,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(Radius.circular(3.866)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 22,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        borderRadius: BorderRadius.all(Radius.circular(10.873)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    right: 18,
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 11,
                                        fontFamily: "",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 52,
                        margin: EdgeInsets.only(bottom: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 57,
                              height: 54,
                              child: Image.asset(
                                "assets/images/user-pic-7.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 66,
                                height: 35,
                                margin: EdgeInsets.only(left: 11, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Fiona Fynn",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 38, 34, 105),
                                          fontSize: 13,
                                          fontFamily: "",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          "@fionafyn",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 154, 154, 154),
                                            fontSize: 13,
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
                            Container(
                              width: 61,
                              height: 22,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 9,
                                    right: 9,
                                    bottom: 0,
                                    child: Container(
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(89, 0, 145, 255),
                                            offset: Offset(0, 2),
                                            blurRadius: 12,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(Radius.circular(3.866)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 22,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        borderRadius: BorderRadius.all(Radius.circular(10.873)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    right: 18,
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 11,
                                        fontFamily: "",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        child: Row(
                          children: [
                            Container(
                              width: 57,
                              height: 54,
                              child: Image.asset(
                                "assets/images/user-pic-8.png",
                                fit: BoxFit.none,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 64,
                                height: 35,
                                margin: EdgeInsets.only(left: 11, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Anna Bella",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 38, 34, 105),
                                          fontSize: 13,
                                          fontFamily: "",
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          "@abelle",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 154, 154, 154),
                                            fontSize: 13,
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
                            Container(
                              width: 61,
                              height: 22,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 9,
                                    right: 9,
                                    bottom: 0,
                                    child: Container(
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(89, 0, 145, 255),
                                            offset: Offset(0, 2),
                                            blurRadius: 12,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(Radius.circular(3.866)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 22,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 145, 255),
                                        borderRadius: BorderRadius.all(Radius.circular(10.873)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 18,
                                    right: 18,
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 11,
                                        fontFamily: "",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 16,
                  right: 23,
                  child: Container(
                    height: 52,
                    child: Row(
                      children: [
                        Container(
                          width: 57,
                          height: 54,
                          child: Image.asset(
                            "assets/images/user-pic-8.png",
                            fit: BoxFit.none,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 64,
                            height: 35,
                            margin: EdgeInsets.only(left: 11, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Anna Bella",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 38, 34, 105),
                                      fontSize: 13,
                                      fontFamily: "",
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      "@abelle",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 154, 154, 154),
                                        fontSize: 13,
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
                        Container(
                          width: 61,
                          height: 22,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                left: 9,
                                right: 9,
                                bottom: 0,
                                child: Container(
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 145, 255),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(89, 0, 145, 255),
                                        offset: Offset(0, 2),
                                        blurRadius: 12,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.all(Radius.circular(3.866)),
                                  ),
                                  child: Container(),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 145, 255),
                                    borderRadius: BorderRadius.all(Radius.circular(10.873)),
                                  ),
                                  child: Container(),
                                ),
                              ),
                              Positioned(
                                left: 18,
                                right: 18,
                                child: Text(
                                  "ADD",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 11,
                                    fontFamily: "",
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}