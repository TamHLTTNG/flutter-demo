import 'package:flutter_demo_app/data/locals/app_preferences/app_preferences.dart';
import 'package:flutter_demo_app/domain/entities/user.dart' as MyUser;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:synchronized/synchronized.dart';

class GoogleSignInFirebase {
  GoogleSignInFirebase._();
  static Lock _lock = Lock();
  static GoogleSignInFirebase? _instance;

  static Future<GoogleSignInFirebase?> getInstance() async {
    if (_instance == null) {
      await _lock.synchronized(() async {
        final singleton = GoogleSignInFirebase._();
        _instance = singleton;
      });
    }
    return _instance;
  }

  final googleSignIn = GoogleSignIn();
  late GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future<bool> signInGoogle() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      return false;
    }
    _user = googleUser;

    final myUser = MyUser.User(
      displayName: _user?.displayName,
      email: _user?.email ?? '',
      id: _user?.id ?? '',
      photoUrl: _user?.photoUrl,
    );
    await AppPreferences().setUserData(myUser);
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    return true;
  }
}
