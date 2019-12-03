import 'package:flutter/foundation.dart';

class InfoUser {
  const InfoUser({
    @required this.uid,
    this.email,
    this.displayName,
    this.photoURL,
  });

  final String uid;
  final String email;
  final String photoURL;
  final String displayName;
}

InfoUser userFromFirebase(user) {
  if (user == null) {
    return null;
  }
  return InfoUser(
    uid: user.uid,
    email: user.email,
    displayName: user.displayName,
    photoURL: identical(0, 0.0) ? user.photoURL : user.photoUrl,
  );
}
