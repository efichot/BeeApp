import 'package:bee_app/components/signout_button.dart';
import 'package:flutter/material.dart';

class SendMoney extends StatelessWidget {
  void onItemPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/Contacts');

  void onBtnSendPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/SuccessSend');

  void onBtnCancelPressed(BuildContext context) => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 27, 19, 63),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 194,
              margin: EdgeInsets.only(top: 21),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Positioned(
                            left: 0,
                            right: 0,
                            child: Text(
                              "Send Money",
                              style: TextStyle(
                                color: Color.fromARGB(255, 35, 27, 71),
                                fontSize: 40,
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
                              width: 259,
                              height: 56,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Send Money",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 26,
                                        fontFamily: "",
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 8),
                                      child: Text(
                                        "It is easy to make a bulk of payment",
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 117, 110, 145),
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
                          SignOut(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 83,
                    child: Container(
                      width: 312,
                      height: 111,
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
                      child: Row(
                        children: [
                          Container(
                            width: 55,
                            height: 79,
                            margin: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 57,
                                  child: Image.asset(
                                    "assets/images/user-pic.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(left: 14, right: 13),
                                  child: Text(
                                    "Julia",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 38, 34, 105),
                                      fontSize: 13,
                                      fontFamily: "",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 55,
                            height: 79,
                            margin: EdgeInsets.only(left: 19),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 57,
                                  child: Image.asset(
                                    "assets/images/user-pic-3.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 19),
                                  child: Text(
                                    "Ali",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 38, 34, 105),
                                      fontSize: 13,
                                      fontFamily: "",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 55,
                            height: 79,
                            margin: EdgeInsets.only(right: 21),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 57,
                                  child: Image.asset(
                                    "assets/images/user-pic-4.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(left: 7, right: 6),
                                  child: Text(
                                    "Patrick",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 38, 34, 105),
                                      fontSize: 13,
                                      fontFamily: "",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 55,
                            height: 79,
                            margin: EdgeInsets.only(right: 16),
                            child: FlatButton(
                              onPressed: () => this.onItemPressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 225, 225, 225),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/user-pic-6.png",
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Add",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
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
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 312,
                height: 211,
                margin: EdgeInsets.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Amount",
                        style: TextStyle(
                          color: Color.fromARGB(255, 117, 110, 145),
                          fontSize: 16,
                          fontFamily: "",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      height: 80,
                      margin: EdgeInsets.only(top: 17),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(38, 0, 0, 0),
                                    offset: Offset(0, 4),
                                    blurRadius: 15,
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 11, top: 16),
                                    child: Text(
                                      "IDR",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 38, 34, 105),
                                        fontSize: 13,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 11, top: 8),
                                    child: Text(
                                      "100.000",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 38, 34, 105),
                                        fontSize: 20,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(38, 0, 0, 0),
                                    offset: Offset(0, 4),
                                    blurRadius: 15,
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 11, top: 16),
                                    child: Text(
                                      "IDR",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 38, 34, 105),
                                        fontSize: 13,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 11, top: 8),
                                    child: Text(
                                      "300.000",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 38, 34, 105),
                                        fontSize: 20,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.left,
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
                      height: 80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 150,
                              height: 80,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 0,
                                    right: -1,
                                    child: Container(
                                      height: 81,
                                      child: Image.asset(
                                        "assets/images/rectangle-2.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 11,
                                    top: 7,
                                    right: 3,
                                    child: Container(
                                      height: 56,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            height: 25,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.only(top: 9),
                                                    child: Text(
                                                      "IDR",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 38, 34, 105),
                                                        fontSize: 13,
                                                        fontFamily: "",
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                ),
                                                Spacer(),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      fontSize: 14,
                                                      fontFamily: "",
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Text(
                                                "800.000",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 38, 34, 105),
                                                  fontSize: 20,
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
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(38, 0, 0, 0),
                                    offset: Offset(0, 4),
                                    blurRadius: 15,
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 11, top: 16),
                                    child: Text(
                                      "IDR",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 38, 34, 105),
                                        fontSize: 13,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 11, top: 8),
                                    child: Text(
                                      "1.500.000",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 38, 34, 105),
                                        fontSize: 20,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 270,
                height: 45,
                margin: EdgeInsets.only(bottom: 16),
                child: FlatButton(
                  onPressed: () => this.onBtnSendPressed(context),
                  color: Color.fromARGB(255, 0, 145, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.5)),
                  ),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "SEND NOW",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "",
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 270,
                height: 45,
                margin: EdgeInsets.only(bottom: 39),
                child: FlatButton(
                  onPressed: () => this.onBtnCancelPressed(context),
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.5)),
                    side: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 55, 46, 92),
                      style: BorderStyle.solid,
                    ),
                  ),
                  textColor: Color.fromARGB(255, 62, 52, 110),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "CANCEL",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "",
                    ),
                    textAlign: TextAlign.center,
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
