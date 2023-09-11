// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pharmacyy/More/Account/Login.dart';
import 'package:pharmacyy/Pages/Welcome.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailAdressController = TextEditingController();
  final TextEditingController _passwordAdressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.deepOrange[100],
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container( alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Sign UP', style: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold, color: Colors.brown[700], 
                        height: 3, fontFamily: "nfont"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  
                    Container(
                      width: 350,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          icon: Icon( Icons.person, color: Colors.deepOrange),
                         labelText: "First name" ,labelStyle: TextStyle(fontFamily: "mfont") ,
                         border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  
                    Container(
                      width: 350,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          icon: Icon( Icons.person, color: Colors.deepOrange),
                         labelText: "Last name" ,labelStyle: TextStyle(fontFamily: "mfont") ,
                         border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  
                    Container(
                      width: 350,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          icon: Icon( Icons.person, color: Colors.deepOrange),
                         labelText: "Phone number" ,labelStyle: TextStyle(fontFamily: "mfont") ,
                         border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  
                    Container(
                      width: 350,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          icon: Icon( Icons.mail, color: Colors.deepOrange),
                         labelText: "Your Email" ,labelStyle: TextStyle(fontFamily: "mfont",) ,
                         border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  
                  
                    Container(
                      width: 350,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffix: Icon(Icons.visibility, color: Colors.cyan[900]),
                          icon: Icon( Icons.lock, color: Colors.deepOrange),
                         hintText: "Password ", hintStyle: TextStyle(fontFamily: "mfont"),
                         border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  
                    Container(
                      width: 350,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffix: Icon(Icons.visibility, color: Colors.cyan[900]),
                          icon: Icon( Icons.lock, color: Colors.deepOrange),
                         hintText: "Configure Password ", hintStyle: TextStyle(fontFamily: "mfont"),
                         border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  
                    ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _emailAdressController.text, 
                          password: _passwordAdressController.text)
                          .then((value) => {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Welcome(),
                              ),
                              ),
                            }
                            );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.cyan[700]),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 80, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                      child: Row( mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "SignUp",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                  
                      SizedBox(width: 300,
                        child: Row(
                          children: [
                            Expanded(child: Divider(thickness: 2, color: Colors.pink[900],)),
                            Text('OR', style: TextStyle(color: Colors.pink[900]),),
                            Expanded(child: Divider(thickness: 2, color: Colors.pink[900],)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),

                      Text('sign Up with', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
          
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell( onTap: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.blue, width: 1)
                              ),
                              child: Image.asset('assets/Images/facebook.png', height: 67,),
                            ),
                          ),
                          SizedBox(width: 25,),
          
                          InkWell( onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration( color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.red, width: 1)
                              ),
                              child: Image.asset('assets/Images/gmailb.png', height: 50,),
                            ),
                          ),
                        ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar( color: Colors.deepOrange[200],
            child: SizedBox(height: 50,
            child: Row(
                          children: [
                           Text("Already have an acoount?", 
                           style: TextStyle(fontSize: 13)
                           ),
                           
                           TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Login()));},
                            child: Text("Log In",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
                            fontFamily: "nfont", decoration: TextDecoration.underline, color: Colors.deepPurple)
                            )
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        ),
          ),
      ),
    );
  }
}