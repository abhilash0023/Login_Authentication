import 'package:flutter/material.dart';
import 'login.dart'; // Import the login screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      // Define routes if you have other screens
      // routes: {
      //   '/home': (context) => HomeScreen(),
      // },
    );
  }
}
