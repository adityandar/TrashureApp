import 'package:flutter/material.dart';
import 'package:trashure_motion/components/icon_box_button.dart';
import 'package:trashure_motion/constant.dart';
import 'package:trashure_motion/components/text_box_field.dart';
import 'package:trashure_motion/components/password_field.dart';
import 'package:trashure_motion/trashure_icons.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: kNormalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextBoxField(
              icon: Icons.person,
              title: 'Nama',
            ),
            SizedBox(
              height: 10.0,
            ),
            TextBoxField(
              icon: Icons.email,
              title: 'Email',
            ),
            SizedBox(
              height: 10.0,
            ),
            TextBoxField(
              icon: Icons.phone,
              title: 'Nomor HP',
            ),
            SizedBox(
              height: 10.0,
            ),
            PasswordField(),
            SizedBox(
              height: 50.0,
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'MASUK',
                style: kBoldText,
              ),
              color: kPrimaryColor,
              onPressed: () {},
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
                    print('ashiap');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
