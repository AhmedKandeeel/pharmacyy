// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pharmacyy/More/Account/Login.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
    final TextEditingController _emailAdressController = TextEditingController();

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
                          child: Text('Forget Password', style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.brown[700], 
                          height: 3, fontFamily: "nfont"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      
                
                      Container(
                        width: 350,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          onChanged: (value) => {},
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            icon: Icon( Icons.person, color: Colors.deepOrange),
                           hintText: "Your Email" ,hintStyle: TextStyle(fontFamily: "mfont") ,
                           border: InputBorder.none
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                
                      ElevatedButton(
                        onPressed: (){
                          FirebaseAuth.instance.sendPasswordResetEmail(
                            email: _emailAdressController.text).
                            then((value) => {
                              Navigator.of(context).pop(),
                            }
                            );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.cyan[700]),
                          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 80, vertical: 10)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                        child: const Text(
                          "Reset",
                          style: TextStyle(fontSize: 24),
                        ),
                        ),
                      const SizedBox(
                          height: 30,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           const Text("Know Password?", 
                           style: TextStyle(fontSize: 13)
                           ),
                           
                           TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Login()));},
                            child: const Text("Log In",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
                            fontFamily: "nfont", decoration: TextDecoration.underline, color: Colors.deepPurple)
                            )
                            ),
                          ],
                        ),
                        ),
          ),
        ),
      ),
    );
  }
}