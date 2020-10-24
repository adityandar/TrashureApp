import 'package:flutter/material.dart';
import 'package:trashure_motion/constant.dart';

class PasswordField extends StatelessWidget {
  final Function onPressed;

  PasswordField({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Password',
        prefixIcon: Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: Colors.grey,
          ),
          onPressed: () {
            print('ashiap');
          },
        ),
      ),
    );
  }
}
