import 'package:bee_app/models/user.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      if (googleAuth.accessToken != null && googleAuth.idToken != null) {
        final UserCredential authResult =
            await auth().signInWithCredential(GoogleAuthProvider.credential(
          googleAuth.idToken,
          googleAuth.accessToken,
        ));
        return userFromFirebase(authResult.user);
      } else {
        throw PlatformException(
            code: 'ERROR_MISSING_GOOGLE_AUTH_TOKEN',
            message: 'Missing Google Auth Token');
      }
    } else {
      throw PlatformException(
          code: 'ERROR_ABORTED_BY_USER', message: 'Sign in aborted by user');
    }
  }

  InfoUser currentUser() {
    final User user = auth().currentUser;
    return userFromFirebase(user);
  }

  Future<void> signOut() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    return auth().signOut();
  }
}
