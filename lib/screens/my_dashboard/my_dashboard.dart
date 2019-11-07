import 'package:bee_app/screens/my_dashboard/item_menu.dart';
import 'package:bee_app/screens/my_dashboard/item_menu_three.dart';
import 'package:bee_app/screens/my_dashboard/item_menu_two.dart';
import 'package:bee_app/screens/my_dashboard/main_menus_text.dart';
import 'package:bee_app/screens/my_dashboard/recent_transaction.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard>
    with TickerProviderStateMixin {
  AnimationController headerAnimationController;
  AnimationController cardAnimationController;
  AnimationController recentTransactionAnimationController;
  AnimationController mainMenusTextAnimationController;
  AnimationController itemMenuAnimationController;
  AnimationController itemMenuThreeAnimationController;
  AnimationController itemMenuTwoAnimationController;

  @override
  void initState() {
    super.initState();

    this.headerAnimationController =
        AnimationController(duration: Duration(milliseconds: 950), vsync: this);
    this.cardAnimationController =
        AnimationController(duration: Duration(milliseconds: 650), vsync: this);
    this.recentTransactionAnimationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    this.mainMenusTextAnimationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    this.itemMenuAnimationController = AnimationController(
        duration: Duration(milliseconds: 1450), vsync: this);
    this.itemMenuThreeAnimationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    this.itemMenuTwoAnimationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);

    this.startAnimationTwo();
  }

  @override
  void dispose() {
    super.dispose();

    this.headerAnimationController.dispose();
    this.cardAnimationController.dispose();
    this.recentTransactionAnimationController.dispose();
    this.mainMenusTextAnimationController.dispose();
    this.itemMenuAnimationController.dispose();
    this.itemMenuThreeAnimationController.dispose();
    this.itemMenuTwoAnimationController.dispose();
  }

  void onSendMoneyPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/SendMoney');

  void startAnimationTwo() {
    this.headerAnimationController.forward();
    this.cardAnimationController.forward();
    this.recentTransactionAnimationController.forward();
    this.mainMenusTextAnimationController.forward();
    this.itemMenuAnimationController.forward();
    this.itemMenuThreeAnimationController.forward();
    this.itemMenuTwoAnimationController.forward();
  }

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
              height: 278,
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
                              "My Dashboard",
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
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    child: Container(
                      width: 317,
                      height: 188,
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
                                        color:
                                            Color.fromARGB(255, 26, 188, 156),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 245, 245, 245),
                                                ),
                                                child: Container(),
                                              ),
                                              Container(
                                                height: 1,
                                                margin:
                                                    EdgeInsets.only(top: 29),
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 245, 245, 245),
                                                ),
                                                child: Container(),
                                              ),
                                              Container(
                                                height: 1,
                                                margin:
                                                    EdgeInsets.only(top: 29),
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 245, 245, 245),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 20,
                                                  height: 53,
                                                  margin:
                                                      EdgeInsets.only(top: 20),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 252, 146, 157),
                                                  ),
                                                  child: Container(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 20,
                                                  height: 22,
                                                  margin: EdgeInsets.only(
                                                      left: 2, top: 51),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 148, 143, 254),
                                                  ),
                                                  child: Container(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 20,
                                                  height: 47,
                                                  margin: EdgeInsets.only(
                                                      left: 68, top: 26),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 148, 143, 254),
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
                                                  margin: EdgeInsets.only(
                                                      top: 42, right: 59),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 253, 178, 156),
                                                  ),
                                                  child: Container(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 20,
                                                  height: 47,
                                                  margin: EdgeInsets.only(
                                                      top: 26, right: 2),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 252, 146, 157),
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
                                                    color: Color.fromARGB(
                                                        255, 46, 203, 167),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "Sun",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 170, 170, 170),
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
                                            color: Color.fromARGB(
                                                255, 170, 170, 170),
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
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 312,
                height: 145,
                margin: EdgeInsets.only(top: 17),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 145,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: mainMenusText(
                                mainMenusTextAnimationController:
                                    this.mainMenusTextAnimationController,
                              ),
                            ),
                            Container(
                              height: 110,
                              margin: EdgeInsets.only(top: 17),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 90,
                                      height: 110,
                                      child: itemMenu(
                                        onSendMoneyPressed: () =>
                                            this.onSendMoneyPressed(context),
                                        itemMenuAnimationController:
                                            this.itemMenuAnimationController,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 90,
                                      height: 110,
                                      child: itemMenuTwo(
                                        itemMenuTwoAnimationController:
                                            this.itemMenuTwoAnimationController,
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
                    Positioned(
                      top: 35,
                      child: Container(
                        width: 90,
                        height: 110,
                        child: itemMenuThree(
                          itemMenuThreeAnimationController:
                              this.itemMenuThreeAnimationController,
                        ),
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
                width: 312,
                height: 131,
                margin: EdgeInsets.only(bottom: 24),
                child: recentTransaction(
                  recentTransactionAnimationController:
                      this.recentTransactionAnimationController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
