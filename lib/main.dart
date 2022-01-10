import 'package:flutter/material.dart';
import 'package:uts/login.dart';
import 'package:uts/splashcreen.dart';
import 'package:uts/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: SplashScreenPage(),
    );
  }
}
