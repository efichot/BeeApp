import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ContactsWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContactsWidgetState();
}

class _ContactsWidgetState extends State<ContactsWidget>
    with TickerProviderStateMixin {
  AnimationController headerAnimationController;
  AnimationController friendsAnimationController;

  @override
  void initState() {
    super.initState();

    this.headerAnimationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    this.friendsAnimationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    this.headerAnimationController.dispose();
    this.friendsAnimationController.dispose();
  }

  void onBtnSendPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/MyDashboard');

  void startAnimationOne() {
    this.headerAnimationController.forward();
    this.friendsAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 27, 19, 63),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: -35,
              top: 21,
              right: -89,
              child: Container(
                height: 120,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                      left: 0,
                      right: 73,
                      child: Text(
                        "My Co",
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
                        width: 218,
                        height: 56,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 113,
                                child: Text(
                                  "Contacts",
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
                                width: 218,
                                margin: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Select them and send it",
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
            ),
            Positioned(
              top: 104,
              child: Container(
                width: 319,
                height: 533,
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
                                      margin:
                                          EdgeInsets.only(left: 11, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Anna Bella",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 38, 34, 105),
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
                                                  color: Color.fromARGB(
                                                      255, 154, 154, 154),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      89, 0, 145, 255),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 12,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3.866)),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.873)),
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
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
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
                                      margin:
                                          EdgeInsets.only(left: 11, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Fiona Fynn",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 38, 34, 105),
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
                                                  color: Color.fromARGB(
                                                      255, 154, 154, 154),
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
                                      onPressed: () =>
                                          this.onBtnSendPressed(context),
                                      color: Color.fromARGB(255, 0, 145, 255),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.873)),
                                      ),
                                      textColor:
                                          Color.fromARGB(255, 255, 255, 255),
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
                                      margin:
                                          EdgeInsets.only(left: 11, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Anna Bella",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 38, 34, 105),
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
                                                  color: Color.fromARGB(
                                                      255, 154, 154, 154),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      89, 0, 145, 255),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 12,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3.866)),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.873)),
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
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
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
                                      margin:
                                          EdgeInsets.only(left: 11, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Fiona Fynn",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 38, 34, 105),
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
                                                  color: Color.fromARGB(
                                                      255, 154, 154, 154),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      89, 0, 145, 255),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 12,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3.866)),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.873)),
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
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
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
                                      margin:
                                          EdgeInsets.only(left: 11, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Fiona Fynn",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 38, 34, 105),
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
                                                  color: Color.fromARGB(
                                                      255, 154, 154, 154),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      89, 0, 145, 255),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 12,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3.866)),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.873)),
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
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
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
                                      margin:
                                          EdgeInsets.only(left: 11, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Anna Bella",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 38, 34, 105),
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
                                                  color: Color.fromARGB(
                                                      255, 154, 154, 154),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      89, 0, 145, 255),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 12,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3.866)),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.873)),
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
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
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
                                      margin:
                                          EdgeInsets.only(left: 11, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Fiona Fynn",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 38, 34, 105),
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
                                                  color: Color.fromARGB(
                                                      255, 154, 154, 154),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      89, 0, 145, 255),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 12,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3.866)),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.873)),
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
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
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
                                      margin:
                                          EdgeInsets.only(left: 11, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Anna Bella",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 38, 34, 105),
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
                                                  color: Color.fromARGB(
                                                      255, 154, 154, 154),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      89, 0, 145, 255),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 12,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3.866)),
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
                                              color: Color.fromARGB(
                                                  255, 0, 145, 255),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.873)),
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
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Anna Bella",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 38, 34, 105),
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
                                              color: Color.fromARGB(
                                                  255, 154, 154, 154),
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
                                          color:
                                              Color.fromARGB(255, 0, 145, 255),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  89, 0, 145, 255),
                                              offset: Offset(0, 2),
                                              blurRadius: 12,
                                            ),
                                          ],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3.866)),
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
                                          color:
                                              Color.fromARGB(255, 0, 145, 255),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.873)),
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
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
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
          ],
        ),
      ),
    );
  }
}
