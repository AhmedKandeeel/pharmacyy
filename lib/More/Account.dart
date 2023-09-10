// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea( child:
      Scaffold(
         body: 
         Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/Images/depositphotos_435815650-stock-photo-shopping-trolley-and-medicine-expensive.jpg'), fit: BoxFit.fill)
          ),
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
                  SizedBox(height: 100,),
                
                  Container( alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(10),
                    child: Text('Have an Account',style: TextStyle(fontWeight: FontWeight.bold),)),
                  ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, "/Login");
                    }, 
                    child: Text(
                      "Log In",
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
                      "Sign Up",
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
                        Text('Call us', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
                        SizedBox(
                          width: 5,
                        ),
    
                        GestureDetector(onTap: (){ },
                      child: 
                      Text("01111111111", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: Colors.white)
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