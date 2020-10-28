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
            //head
            //TODO: Belum ada lengkungannya, bikin bro.
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
              height: 7.5,
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 7.5,
                    ),
                    //overview
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // ujung masih lancip nanti perlu diganti
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              color: Color(0xFF689F38),
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('DOMPET', style: kWalletText),
                                  Text('Rp.150.000', style: kWalletText)
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              color: kPrimaryColor,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Level: Trashure Sejati', style: kPText),
                                  Center(
                                    child: Container(
                                      height: 60.0,
                                      width: 2.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text('Trashbag: Tidak Terhubung',
                                      style: kPText),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      height: 120,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //chart
                    Container(
                      color: Colors.grey,
                      height: 379,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //history
                    Container(
                      color: Colors.white,
                      height: 379,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Setoran', style: kHeadBlueText),
                              Text('Lihat semua', style: kSmallText)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //tips
                    Container(
                      color: Colors.grey,
                      height: 204,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
