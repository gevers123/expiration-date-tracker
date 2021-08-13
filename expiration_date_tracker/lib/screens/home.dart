import 'package:expiration_date_tracker/services/auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.purple[400],
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(
            onPressed: () async {
              await _auth.logOut();
            },
            icon: Icon(Icons.person),
            label: Text('Logout'),
          )
        ],
      ),
    );
  }
}
// AppBar: Home, logout button

// add item button

// view inventory button
