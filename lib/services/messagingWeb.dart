import 'package:bee_app/components/showNotification.dart';
import 'package:firebase/firebase.dart';

notifications(context) {
  messaging().requestPermission().then((p) {
    print('Have Permission');
    return messaging().getToken();
  }).then((token) {
    print(token);
  }).catchError(() {
    print('Error Occured');
  });

  messaging().onMessage.listen((Payload message) {
    showNotification(
        context, message.notification.title, message.notification.body);
  });
}
