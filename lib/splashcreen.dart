import 'package:flutter/material.dart';
import 'package:uts/main.dart';
import 'package:uts/login.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5, //mengatur waktu
      navigateAfterSeconds: LoginPage(),
      title: new Text('Smart Farming'),
      image: Image.asset('assets/images/logo.jpg'),
      photoSize: 150.0,
    );
  }
}
