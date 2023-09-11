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
            image: DecorationImage(image: AssetImage('assets/Images/6929748.jpg'), fit: BoxFit.cover)
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container( alignment: Alignment.center,
                    child: Text('"Pharmacy"', style: TextStyle( fontFamily: "nfont",
                      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepOrange, 
                    height: 8.5),
                    ),
                  ),
                  SizedBox(height: 15,),
                
                  Container( alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(10),
                    child: Text('Have an Account',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
                  ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, "/Login");
                    }, 
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red[400]),
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
                      child: Text("Create Account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                      ),
                    ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, "/SignUp");
                    }, 
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orangeAccent[400]),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 80, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      )),
                    ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar( color: Colors.indigoAccent[100],
        child: SizedBox(height: 50,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Call Us", 
                style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: "mfont")
                  ),
                           
              TextButton(onPressed: (){},
                child: Text("01096794426",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                      fontFamily: "nfont", decoration: TextDecoration.underline, color: Colors.black)
                          ),
                        ),
                      ],
                    ),
                  ),
      ),
    )
    );
  }
}