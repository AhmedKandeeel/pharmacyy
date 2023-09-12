// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pharmacyy/Pages/Cart.dart';
import 'package:pharmacyy/Pages/More.dart';
import 'package:pharmacyy/Pages/Welcome.dart';
import 'package:pharmacyy/Search/Search1.dart';

class NavBar extends StatefulWidget {
  final int initialIndex;
  const NavBar({super.key, required this.initialIndex});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    switch (index){
      case 0: _navigateToRoute(context, '/Welcome', const Welcome());
      break;
      case 1: _navigateToRoute(context, '/Search1', const Search1());
      break;
      case 2: _navigateToRoute(context, '/Cart', const Cart());
      break;
      case 3: _navigateToRoute(context, '/More', const More());
      break;
    }
  }

  void _navigateToRoute(context, String routeName, Widget screen){
    final String? CurrentRouteName = ModalRoute.of(context)?.settings.name;
    bool routeExists = CurrentRouteName == routeName;

    if (routeExists){
      Navigator.popUntil(context, ModalRoute.withName(routeName));
    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: 
      (context) => screen,
      settings: RouteSettings(name: routeName)));
    }
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( currentIndex: _selectedIndex,
    type: BottomNavigationBarType.fixed,
    onTap: _onItemTapped,
    backgroundColor: Colors.white,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.black,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,
        color: _selectedIndex == 0? Colors.deepOrange : Colors.black,),
        label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search,
        color: _selectedIndex == 1? Colors.deepOrange : Colors.black,),
        label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout,
        color: _selectedIndex == 2? Colors.deepOrange : Colors.black,),
        label: "Cart"),
        BottomNavigationBarItem(icon: ImageIcon(const AssetImage("assets/Images/menu.png"),
        color: _selectedIndex == 3? Colors.deepOrange : Colors.black,),
        label: "More"),

      ]);
  }
}