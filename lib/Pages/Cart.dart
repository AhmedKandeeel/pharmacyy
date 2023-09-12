// ignore_for_file: file_names, avoid_unnecessary_containers, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pharmacyy/Custom.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<String> ProductsName = [];
  List<int> quantites = [];
  List<double> prices = [];
  List<String> images = [];

  void incrementQuantity(int index){
    setState(() {
      quantites[index]++;
    });
  }

  void decrementQuantity(int index){
    setState(() {
      quantites[index]--;
    });
  }

  double getCartToal(){
    double total = 0;
    for (int i = 0; i < ProductsName.length; i++){
      total += quantites[i] * prices[i];
    }
    return total;
  }

  void showCheckOutDialog(){
    showDialog(context: context, 
    builder: (context){
      return AlertDialog(
        title: Text("Check Out"),
        content: Text("Hurry! Your products are waiting"),
        actions: [
          TextButton(onPressed: (){}, 
          child: Text("OK"))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Custom(
      showNavBar: true,
      initialIndex: 2,
      body: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Align( alignment: Alignment.topLeft,
                  child: Text("Users's Basket", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                const SizedBox(height: 25,),
                
                ElevatedButton( 
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(double.infinity, 45)),
                    backgroundColor: MaterialStateProperty.all(Colors.white38)
                  ),
                  onPressed: (){},
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: Colors.orange[700],),
                        const SizedBox(width: 10,),
                        const Column(
                          children: [
                            Text("Deliver to:", style: TextStyle(color: Colors.black),),
                            Text("Location", style: TextStyle(color: Colors.black))
                          ],
                        ),
                        const SizedBox(width: 205,),
                       Icon(Icons.arrow_forward_ios, color: Colors.orange[700])
                      ],
                    ),
                ),
                const SizedBox(height: 25,),
                
                const Align( alignment: Alignment.topLeft,
                  child: Text("Order again", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)),
                const SizedBox(height: 20,),
                

                const Row(
                  children: [
                    Text("Your order"),
                    SizedBox(width: 250,),
                    Text("0 items")
                  ],
                ),
                const SizedBox(height: 25,),

                Row(
                  children: [
                    Icon(Icons.motorcycle_outlined, color: Colors.orange[700],),
                    const SizedBox(width: 15,),
                    const Text("Now in 60 minutes"),
                  ],
                ),
                const SizedBox(height: 20,),

                Expanded(child: 
                ListView.builder(
                  itemCount: ProductsName.length,
                  itemBuilder: ((context, index){
                    return Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Image.asset(images[index]),
                          Column(
                            children: [
                              Text(ProductsName[index],
                              style: const TextStyle(fontSize: 18, color: Colors.black),),
                              Text("\$${prices[index]}",
                              style: const TextStyle(fontSize: 16, color: Colors.black),)
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              IconButton(onPressed: (){decrementQuantity(index);}, 
                              icon: Icon(Icons.remove),),
                              Text(quantites[index].toString(), 
                              style: TextStyle(fontSize: 14),),
                              IconButton(onPressed: (){incrementQuantity(index);}, 
                              icon: Icon(Icons.add))
                            ],
                          ),
                        ],
                      ),
                    );
                  }))
                  ),
                
                const Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_open, size: 15,),
                    SizedBox(width: 5,),
                    Text("Avilable payment methods",
                    style: TextStyle(fontSize: 12),)
                  ],
                ),
                SizedBox(height: 10,),
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/Images/Mastercard-logo.png", width: 30,),
                    SizedBox(width: 10,),
                    Image.asset("assets/Images/visa-icon-2048x1313-o6hi8q5l.png", width: 30),
                    SizedBox(width: 10,),
                    Image.asset("assets/Images/Meeza_Egyptian_company_logo.png", width: 30),
                    SizedBox(width: 10,),
                    Image.asset("assets/Images/cashondelivery1.jpg", width: 40,),
                  ],
                ),
                Divider(),
                Padding(padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text("Total", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(width: 50,),
                    Text("\$${getCartToal().toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ),
                Divider(),
                Padding(padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange, fixedSize: Size(double.infinity, 50)),
                      onPressed: (){showCheckOutDialog();}, 
                  child: Text("Check Out")))
                ]),)
              ],
            ),
          )
        )
        )
      );
  }
}