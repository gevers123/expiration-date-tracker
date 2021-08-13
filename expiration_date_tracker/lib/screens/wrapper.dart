import 'package:expiration_date_tracker/models/user.dart';
import 'package:expiration_date_tracker/screens/authenticate/authenticate.dart';
import 'package:expiration_date_tracker/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<TheUser>(
        context); // specifics which stream to listen to - now user contains TheUser data
    print(user);

    if (user == null) {
      // if the user is not logged in, return Authenticate widget
      return Authenticate(); // Authenticate() will determine whether to display login or register screen
    } else {
      // if the user is logged in, return home screen
      return HomeScreen();
    }
  }
}
