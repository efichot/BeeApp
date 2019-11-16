import 'package:bee_app/models/user.dart';
import 'package:firebase/firebase.dart';

class AuthService {
  InfoUser _userFromFirebase(user) {
    if (user == null) {
      return null;
    }
    return InfoUser(
      uid: user.uid,
      email: user.email,
      displayName: user.displayName,
      photoUrl: user.photoUrl,
    );
  }

  Stream<InfoUser> get onAuthStateChanged {
    return auth().onAuthStateChanged.map(_userFromFirebase);
  }
}
