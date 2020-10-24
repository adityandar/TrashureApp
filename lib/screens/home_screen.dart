import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trashure_motion/constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: kNormalPadding.copyWith(top: 40),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trashure',
                    style: kBigText,
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.notifications), onPressed: () {}),
                      IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                // ujung masih lancip nanti perlu diganti
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      height: 100,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
