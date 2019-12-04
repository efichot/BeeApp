import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

showNotification(BuildContext context, String title, String body) {
  showOverlayNotification((context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: SafeArea(
        child: ListTile(
          leading: SizedBox.fromSize(
              size: const Size(40, 40),
              child: ClipOval(
                  child: Image.asset(
                "assets/images/icon-card-success.png",
              ))),
          title: Text(title),
          subtitle: Text(body),
          trailing: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                OverlaySupportEntry.of(context).dismiss();
              }),
        ),
      ),
    );
  }, duration: Duration(milliseconds: 4000));
}
