// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pharmacyy/Custom.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return const Custom(
      showNavBar: true,
      initialIndex: 2,
      body: SafeArea(
        child: Scaffold(
          body: Center(
            child: Text('data'),
          ),
        )
        )
      );
  }
}