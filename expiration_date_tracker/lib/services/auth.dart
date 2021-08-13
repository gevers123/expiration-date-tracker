import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon
  Future loginAsGuest() async {
    try {
      UserCredential credential = await _auth.signInAnonymously();
      User user = credential.user;
      return user;
    } catch (e) {
      print(e.tostring());
      return null;
    }
  }

  // sign in phone

  // register w phone

  // sign out
}
