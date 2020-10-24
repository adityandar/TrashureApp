import 'package:flutter/material.dart';

import 'package:trashure_motion/constant.dart';
import 'package:trashure_motion/trashure_icons.dart';

class LogoWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Trashure.logo,
          size: 60.0,
          color: kPrimaryColor,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Trashure',
          style: kHeadlineText,
        ),
      ],
    );
  }
}
