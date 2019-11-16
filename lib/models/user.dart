import 'package:flutter/foundation.dart';

class InfoUser {
  const InfoUser({
    @required this.uid,
    this.email,
    this.displayName,
    this.photoUrl,
  });

  final String uid;
  final String email;
  final String photoUrl;
  final String displayName;
}
