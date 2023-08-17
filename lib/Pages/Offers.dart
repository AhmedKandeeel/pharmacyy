// ignore_for_file: file_names, prefer_const_constructors, unused_field, unused_import

import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[300],
      bottomNavigationBar: MoltenBottomNavigationBar(
        barColor: Colors.deepOrange[500],
        domeCircleColor: Colors.white,
        tabs: [MoltenTab(icon: Icon(Icons.home, color: Colors.red[900],),
        title: Text("Home", style: TextStyle(color: Colors.white),),),
        MoltenTab(icon: Icon(Icons.search, color: Colors.red[900]),
        title: Text("Search", style: TextStyle(color: Colors.white),),),
        MoltenTab(icon: Icon(Icons.shopping_cart_checkout, color: Colors.red[900]),
        title: Text("Cart", style: TextStyle(color: Colors.white),),),
        MoltenTab(icon: Icon(Icons.settings, color: Colors.red[900]),
        title: Text("Settings", style: TextStyle(color: Colors.white),),),
        ], 
        selectedIndex: _selectedIndex,
        domeHeight: 25,
        onTabChange: (clickedIndex){}),

        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          elevation: 0,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_option_key))
          ],
        ),
    );
  }
}