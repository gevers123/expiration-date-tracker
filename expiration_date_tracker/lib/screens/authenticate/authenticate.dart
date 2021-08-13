import 'package:flutter/cupertino.dart';
import 'package:expiration_date_tracker/screens/authenticate/login.dart';
import 'package:expiration_date_tracker/screens/register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool viewLogin = true;
  void toggleView() {
    setState(() => viewLogin = !viewLogin);
  }

  @override
  Widget build(BuildContext context) {
    if (viewLogin) {
      return LoginScreen(toggleView: toggleView);
    } else {
      return RegisterScreen(toggleView: toggleView);
    }
  }
}
