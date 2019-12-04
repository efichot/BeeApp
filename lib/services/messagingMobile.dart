import 'package:bee_app/components/showNotification.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

notifications(context) {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  void iosPermission() {
    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
  }

  if (Theme.of(context).platform == TargetPlatform.iOS) iosPermission();

  _firebaseMessaging.getToken().then((token) {
    print(token);
  });

  _firebaseMessaging.configure(
    onMessage: (Map<String, dynamic> message) async {
      showNotification(context, message['notification']['title'],
          message['notification']['body']);
    },
    onResume: (Map<String, dynamic> message) async {
      showNotification(context, message['notification']['title'],
          message['notification']['body']);
    },
    onLaunch: (Map<String, dynamic> message) async {
      showNotification(context, message['notification']['title'],
          message['notification']['body']);
    },
  );
}
