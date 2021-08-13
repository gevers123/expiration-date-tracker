import 'package:expiration_date_tracker/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on Firebase user
  TheUser _theUserFromFirebaseUser(User user) {
    return user != null ? TheUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<TheUser> get user {
    return _auth
        .authStateChanges()
        .map((User user) => _theUserFromFirebaseUser(user));
  }

  // sign in anon
  Future loginAsGuest() async {
    try {
      UserCredential credential = await _auth.signInAnonymously();
      User user = credential.user;
      return _theUserFromFirebaseUser(user);
    } catch (e) {
      print(e.tostring());
      return null;
    }
  }

  // sign in phone

  // register w phone

  // sign out
}
