// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea( child:
      Scaffold(
         body: 
         Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Container( alignment: Alignment.center,
                    child: Text('"Pharmacy"', style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue[800], 
                    height: 5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Image.asset('assets/Images/tablet.png', height: 150,),
                  ),
                  SizedBox(height: 25,),
                
                  Container( alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(10),
                    child: Text('Have an Account',style: TextStyle(fontWeight: FontWeight.bold),)),
                  ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, "/Login");
                    }, 
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepOrange[200]),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 80, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      )),
                    ),
                    ),
                    SizedBox(
                      height: 22,
                    ),

                    Container( alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(10),
                      child: Text("Create Account", style: TextStyle(fontWeight: FontWeight.bold),)
                      ),
                    ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, "/SignUp");
                    }, 
                    child: Text(
                      "SignUp",
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepOrange[400]),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 80, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      )),
                    ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Call us', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        SizedBox(
                          width: 5,
                        ),

                        GestureDetector(onTap: (){ },
                      child: 
                      Text("01111111111", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)
                      ),
                      ),
                      ],
                    )
                ],
              ),
        
        
            ],
          ),
        ),
      ),
    );
  }
}