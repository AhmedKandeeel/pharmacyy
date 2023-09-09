// ignore_for_file: file_names,, non_constant_identifier_names, use_build_context_synchronously

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pharmacyy/Pages/Welcome.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

   @override
  void initState() {
    super.initState();
    _Loadinghome();
  }

  _Loadinghome()async{
    await Future.delayed(const Duration(seconds: 3),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Welcome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[500],
      body: Center(
        child: Image.asset('assets/Images/pharmacy.png', height: 100,),
      ),
    );
  }
}