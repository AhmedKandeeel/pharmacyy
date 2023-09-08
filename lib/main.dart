import 'package:flutter/material.dart';
import 'package:pharmacyy/Details/First.dart';
import 'package:pharmacyy/Details/Second.dart';
import 'package:pharmacyy/Details/Third.dart';
import 'package:pharmacyy/More/Account.dart';
import 'package:pharmacyy/More/Account/Login.dart';
import 'package:pharmacyy/More/Account/SignUp.dart';
import 'package:pharmacyy/Pages/More.dart';
import 'package:pharmacyy/Pages/Offers.dart';
import 'package:pharmacyy/Pages/Welcome.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      "/" :(context) => const Welcome(),
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
