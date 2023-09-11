import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pharmacyy/Details/First.dart';
import 'package:pharmacyy/Details/Second.dart';
import 'package:pharmacyy/Details/Third.dart';
import 'package:pharmacyy/More/Account.dart';
import 'package:pharmacyy/More/Account/Login.dart';
import 'package:pharmacyy/More/Account/SignUp.dart';
import 'package:pharmacyy/Pages/Cart.dart';
import 'package:pharmacyy/Pages/More.dart';
import 'package:pharmacyy/Pages/Offers.dart';
import 'package:pharmacyy/Pages/Welcome.dart';
import 'package:pharmacyy/Search/Search1.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 3000,
        splashTransition: SplashTransition.decoratedBoxTransition,
        backgroundColor: Colors.deepOrange,
        splash: 
        Center(
        child: Image.asset('assets/Images/pharmacy.png', height: 100,)),
      nextScreen: const Welcome(),
      ),
    initialRoute: '/',
    routes: {
      "/Welcome" :(context) => const Welcome(),
      "/Search1" :(context) => const Search1(),
      "/Cart" :(context) => const Cart(),
      "/Offers" :(context) => const Offers(),
      "/First" :(context) => const First(),
      "/Second" :(context) => const Second(),
      "/Third" :(context) => const Third(),
      "/More" :(context) => const More(),
      "/Account" :(context) => const Account(),
      "/Login" :(context) => const Login(),
      "/SignUp" :(context) => const SignUp(),
      },
    );
  }
}
