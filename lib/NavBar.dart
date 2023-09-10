// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pharmacyy/Pages/More.dart';
import 'package:pharmacyy/Pages/Welcome.dart';

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
      case 1: _navigateToRoute(context, '/Search', const Welcome());
      break;
      case 2: _navigateToRoute(context, '/Cart', const Welcome());
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
    backgroundColor: Colors.deepOrange[400],
    selectedItemColor: Colors.lime,
    unselectedItemColor: Colors.black,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,
        color: _selectedIndex == 0? Colors.black : Colors.white,),
        label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search,
        color: _selectedIndex == 0? Colors.black : Colors.white,),
        label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout,
        color: _selectedIndex == 0? Colors.black : Colors.white,),
        label: "Cart"),
        BottomNavigationBarItem(icon: ImageIcon(const AssetImage("assets/Images/menu.png"),
        color: _selectedIndex == 0? Colors.black : Colors.white,),
        label: "More"),

      ]);
  }
}