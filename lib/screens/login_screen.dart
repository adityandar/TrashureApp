import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trashure_motion/components/password_field.dart';
import 'package:trashure_motion/components/text_box_field.dart';
import 'package:trashure_motion/constant.dart';
import 'package:trashure_motion/screens/home_screen.dart';
import 'package:trashure_motion/screens/register_screen.dart';
import 'package:trashure_motion/trashure_icons.dart';
import 'package:trashure_motion/components/logo_with_text.dart';
import 'package:trashure_motion/components/icon_box_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: kNormalPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LogoWithText(),
                SizedBox(
                  height: 50.0,
                ),
                TextBoxField(
                  icon: Icons.email,
                  title: 'Email',
                ),
                SizedBox(
                  height: 10.0,
                ),
                PasswordField(),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (v) {},
                        ),
                        Text('Ingat saya', style: kSmallText),
                      ],
                    ),
                    GestureDetector(
                      child: Text(
                        'LUPA PASSWORD ?',
                        style: kXSmallText,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'MASUK',
                    style: kBoldText,
                  ),
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'atau masuk dengan',
                  textAlign: TextAlign.center,
                  style: kGreyText,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconBoxButton(
                      onPressed: () {},
                      icon: Trashure.gplus,
                    ),
                    SizedBox(width: 15.0),
                    IconBoxButton(
                      onPressed: () {},
                      icon: Trashure.facebook,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun Trashure?',
                      style: kBlackText,
                    ),
                    SizedBox(width: 5.0),
                    GestureDetector(
                      child: Text(
                        'DAFTAR',
                        style: kXSmallText,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
