import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return const MaterialApp(
      title: 'Login',
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
