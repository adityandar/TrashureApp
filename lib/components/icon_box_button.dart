import 'package:trashure_motion/constant.dart';
import 'package:flutter/material.dart';

class IconBoxButton extends StatelessWidget {
  IconBoxButton({this.onPressed, this.icon});

  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      padding: EdgeInsets.symmetric(
          vertical: 12.0, horizontal: 12.0), //adds padding inside the button
      materialTapTargetSize: MaterialTapTargetSize
          .shrinkWrap, //limits the touch area to the button area
      minWidth: 0, //wraps child's width
      height: 0, //wraps child's height
      child: RaisedButton(
        onPressed: onPressed,
        child: Icon(
          icon,
          color: Colors.white,
          size: 27.0,
        ), //your original button
        color: kPrimaryColor,
      ),
    );
  }
}
