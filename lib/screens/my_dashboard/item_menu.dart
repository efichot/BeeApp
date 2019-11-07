
import 'package:flutter/material.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';
import 'package:supernova_flutter_ui_toolkit/transitions.dart';


class itemMenu extends StatelessWidget {
  itemMenu({Key key, this.onSendMoneyPressed, AnimationController itemMenuAnimationController}) :
    translateX = Interpolation<double>(keyframes: [
      Keyframe<double>(fraction: 0, value: 0),
      Keyframe<double>(fraction: 0.001, value: -115),
      Keyframe<double>(fraction: 1, value: 0),
    ]).animate(CurvedAnimation(
      parent: itemMenuAnimationController,
      curve: Interval(0, 1, curve: Cubic(0, 0, 1, 1)),
    )),
  super(key: key);
  VoidCallback onSendMoneyPressed;
  Animation<double> translateX;
  
  @override
  Widget build(BuildContext context) {
  
    return TranslationTransition(
      translationX: this.translateX,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(left: 11, top: 11),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 204, 255, 244),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 11, right: 8),
                      child: Text(
                        "",
                        style: TextStyle(
                          color: Color.fromARGB(255, 26, 188, 156),
                          fontSize: 18,
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
            Container(
              height: 32,
              margin: EdgeInsets.only(right: 26, bottom: 10),
              child: FlatButton(
                onPressed: this.onSendMoneyPressed,
                color: Colors.transparent,
                textColor: Color.fromARGB(255, 38, 34, 105),
                padding: EdgeInsets.all(0),
                child: Text(
                  "Send \nMoney",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: "",
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}