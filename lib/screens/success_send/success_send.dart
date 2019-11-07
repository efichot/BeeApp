import 'package:flutter/material.dart';

class SuccessSend extends StatelessWidget {
  void onBtnDashboardPressed(BuildContext context) =>
      Navigator.pushNamed(context, '/MyDashboard');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 27, 19, 63),
        ),
        child: Column(
          children: [
            Container(
              width: 136,
              height: 136,
              margin: EdgeInsets.only(top: 103),
              child: Image.asset(
                "assets/images/icon-card-success.png",
                fit: BoxFit.none,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 56),
              child: Text(
                "Ah, It Sent",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 23,
                  fontFamily: "",
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 17),
              child: Text(
                "Tell your friend to check\ntheir account",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                  fontFamily: "",
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Container(
              width: 270,
              height: 45,
              margin: EdgeInsets.only(bottom: 70),
              child: FlatButton(
                onPressed: () => this.onBtnDashboardPressed(context),
                color: Color.fromARGB(255, 26, 188, 156),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(22.5)),
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "OK, FINISH",
                  style: TextStyle(
                    fontSize: 18,
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
    );
  }
}
