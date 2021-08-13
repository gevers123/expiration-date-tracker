import 'package:expiration_date_tracker/models/user.dart';
import 'package:expiration_date_tracker/screens/authenticate/authenticate.dart';
import 'package:expiration_date_tracker/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<TheUser>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
