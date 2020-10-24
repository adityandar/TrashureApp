import 'package:flutter/material.dart';
import 'package:trashure_motion/trashure_icons.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8BC34A),
      body: Center(
        child: Icon(
          Trashure.logo,
          size: 75.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
