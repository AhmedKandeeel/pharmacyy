// ignore_for_file: file_names, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pharmacyy/More/Account/Forget.dart';
import 'package:pharmacyy/More/Account/SignUp.dart';
import 'package:pharmacyy/Pages/Welcome.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailAdressController = TextEditingController();
  final TextEditingController _passwordAdressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null){
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: SafeArea(
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
                          padding: const EdgeInsets.all(60.0),
                          child: Text('Log In', style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.brown[700], 
                          height: 3, fontFamily: "nfont"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      
                
                      Container(
                        width: 350,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          onChanged: (value) => {},
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            icon: Icon( Icons.person, color: Colors.deepOrange),
                           hintText: "Your Email" ,hintStyle: TextStyle(fontFamily: "mfont") ,
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
                          onChanged: (value) => {},
                          obscureText: true,
                          decoration: InputDecoration(
                            suffix: Icon(Icons.visibility, color: Colors.cyan[900]),
                            icon: Icon( Icons.lock, color: Colors.deepOrange),
                           hintText: "Password ", hintStyle: TextStyle(fontFamily: "mfont"),
                           border: InputBorder.none
                          ),
                        ),
                      ),
                      TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Forget()));}, 
                      child: Text("Forget password?")),
                      SizedBox(
                        height: 20,
                      ),
                
                      ElevatedButton(
                        onPressed: (){
                          FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: _emailAdressController.text, 
                            password: _passwordAdressController.text).
                            then((value) => {
                              Navigator.of(context).push(MaterialPageRoute(builder: 
                              (context) => Welcome()
                              ),
                              ),
                            }
                            );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 24),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.cyan[700]),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 80, vertical: 10)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                        ),
                      SizedBox(
                          height: 30,
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
                
                          Text('Log In with', style: TextStyle(fontWeight: FontWeight.bold),),
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
          bottomNavigationBar:
          BottomAppBar( color: Colors.deepOrange[200],
            child: SizedBox(height: 60,
            child: Row(
                          children: [
                           Text("Don't have an acoount?", 
                           style: TextStyle(fontSize: 13)
                           ),
                           
                           TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUp()));},
                            child: Text("Sign Up",
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
      ),
    );
  }
}