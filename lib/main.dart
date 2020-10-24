import 'package:flutter/material.dart';
import 'package:trashure_motion/constant.dart';
import 'package:trashure_motion/screens/home_screen.dart';
import 'package:trashure_motion/screens/login_screen.dart';
import 'package:trashure_motion/screens/register_screen.dart';
import 'package:trashure_motion/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData.light().copyWith(
        primaryColor: kPrimaryColor,
      ),
    );
  }
}
