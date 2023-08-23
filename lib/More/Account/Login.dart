// ignore_for_file: file_names, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.deepOrange[100],
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Container( alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Login', style: TextStyle(
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
                        suffix: Icon(Icons.visibility, color: Colors.cyan[900]),
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
                    height: 20,
                  ),

                  ElevatedButton(
                    onPressed: () {},
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
                      height: 25,
                    ),

                  Row(
                    children: [
                     Text("Don't have an acoount?  ", 
                     style: TextStyle(fontSize: 12)
                     ),
                     
                     GestureDetector(onTap: (){ },
                      child: Text("Log in",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline)
                      )
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
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

                      Text('Login with', style: TextStyle(fontWeight: FontWeight.bold),),
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
    );
  }
}