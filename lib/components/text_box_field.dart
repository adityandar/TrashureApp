import 'package:flutter/material.dart';
import 'package:trashure_motion/constant.dart';

class TextBoxField extends StatelessWidget {
  final IconData icon;
  final String title;

  TextBoxField({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: title,
        prefixIcon: Icon(
          icon,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
