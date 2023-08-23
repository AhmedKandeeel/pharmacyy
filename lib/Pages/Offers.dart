// ignore_for_file: file_names, prefer_const_constructors, unused_field, unused_import, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[300],
      
      bottomNavigationBar: MoltenBottomNavigationBar(
        onTabChange: (index) => {
          setState(() {
              _selectedIndex = index;
            }
          )
        },
        barColor: Colors.deepOrange[600],
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
        ),

        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          elevation: 0,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_option_key))
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            height: 200,
            decoration: ShapeDecoration(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              ),
              image: DecorationImage(image: AssetImage('assets/Images/1600x600-events-background.jpg'),
              fit: BoxFit.cover),
              ),
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("GET",
                  style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold, color: Colors.white),
                  ),

                  Image.asset('assets/Images/download-50-off-discount-offer-PNG-transparent-images-transparent-backgrounds-PNGRIVER-COM-50-Off-PNG-File-Download-Free.png', width: 250,),

                  Text("for today",
                  style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.bold, color: Colors.white),
                  ),
              ],
            ),
          ),
        ),
    );
  }
}

// style: ButtonStyle( 
//                                 backgroundColor: MaterialStateProperty.all(Colors.pink),
//                                 fixedSize: MaterialStateProperty.all(Size(500, 200)),
//                                 shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(25)
//                                 ),