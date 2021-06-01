import 'package:flutter/material.dart';
import 'assets.dart';
import 'login.dart';
import 'scan_kart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سیستم خرید هوشمند',
      home: Scaffold(
        body: LoginPage(),
        // body: ScanKart(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      color: Colors.green,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InteractiveLoginPage();
  }
}
