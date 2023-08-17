// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [ SizedBox(height: 15,),
            Container( width: double.infinity, height: 80,
              margin: EdgeInsets.only(left: 5),
              child: Row(
                children: [ Icon(Icons.account_circle_rounded, size: 25,),
                SizedBox(
                  width: 10,
                ),
                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, "/Account");},
                    child: Text("Account",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 22,
                    ),
                    textAlign: TextAlign.left,
                    ),
                    ),
                    SizedBox(
                      width: 230,
                    ),
                    Icon(Icons.settings_outlined, size: 25,),
                ],
              ),
                ),

            Container( width: double.infinity, height: 40,
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [ Icon(Icons.article_outlined),
                SizedBox(
                  width: 10,
                ),
                  GestureDetector(
                    onTap: (){},
                    child: Text("Your orders",
                    style: TextStyle(color: Colors.black, fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                    ),
                    ),
                ],
              ),
              ),
          
            Container( width: double.infinity, height: 40,
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [ Icon(Icons.local_offer_outlined),
                SizedBox(
                  width: 10,
                ),
                  GestureDetector(
                    onTap: (){},
                    child: Text("Vouchers",
                    style: TextStyle(color: Colors.black, fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                    ),
                    ),
                ],
              ),
              ),
          
            Container( width: double.infinity, height: 40,
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [ Icon(Icons.notifications_none_outlined),
                SizedBox(
                  width: 10,
                ),
                  GestureDetector(
                    onTap: (){},
                    child: Text("Notifications",
                    style: TextStyle(color: Colors.black, fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                    ),
                    ),
                ],
              ),
              ),

            Container( width: double.infinity, height: 40,
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [ Icon(Icons.account_balance_wallet_outlined),
                SizedBox(
                  width: 10,
                ),
                  GestureDetector(
                    onTap: (){},
                    child: Text("Pay",
                    style: TextStyle(color: Colors.black, fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                    ),
                    ),
                ],
              ),
              ),

            Container( width: double.infinity, height: 40,
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [ Icon(Icons.gpp_maybe_outlined),
                SizedBox(
                  width: 10,
                ),
                  GestureDetector(
                    onTap: (){},
                    child: Text("About",
                    style: TextStyle(color: Colors.black, fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                    ),
                    ),
                ],
              ),
              ),

          ],
        ),
        ),
    );
  }
}