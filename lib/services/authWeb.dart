import 'package:bee_app/models/user.dart';
import 'package:firebase/firebase.dart';

class AuthService {
  Stream<InfoUser> get onAuthStateChanged {
    return auth().onAuthStateChanged.map(userFromFirebase);
  }

  Future<InfoUser> signInAnonymously() async {
    final UserCredential authResult = await auth().signInAnonymously();
    return userFromFirebase(authResult.user);
  }

  Future<InfoUser> signInWithEmailAndPassword(
      String email, String password) async {
    final UserCredential authResult = await auth().signInWithEmailAndPassword(
      email,
      password,
    );
    return userFromFirebase(authResult.user);
  }

  Future<InfoUser> createUserWithEmailAndPassword(
      String email, String password) async {
    final UserCredential authResult =
        await auth().createUserWithEmailAndPassword(email, password);
    return userFromFirebase(authResult.user);
  }

  Future<void> sendPasswordResetEmail(String email) async {
    await auth().sendPasswordResetEmail(email);
  }

  Future<InfoUser> signInWithGoogle() async {
    GoogleAuthProvider provider = GoogleAuthProvider();
    UserCredential authResult = await auth().signInWithPopup(provider);
    return userFromFirebase(authResult.user);
  }

  InfoUser currentUser() {
    final User user = auth().currentUser;
    return userFromFirebase(user);
  }

  Future<void> signOut() async {
    return auth().signOut();
  }
}
