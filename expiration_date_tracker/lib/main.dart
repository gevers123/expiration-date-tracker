import 'package:expiration_date_tracker/screens/wrapper.dart';
import 'package:expiration_date_tracker/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        return StreamProvider<TheUser>.value(
          // TheUser data comes down stream
          value: AuthService().user, // specifies which stream to listen to
          initialData: null, // initial data is null
          child: MaterialApp(
            // all widgets inside can access data from stream
            home: Wrapper(),
          ),
        );
      },
    );
  }
}
