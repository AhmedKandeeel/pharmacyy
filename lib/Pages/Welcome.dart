// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import '../Custom.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return Custom(
      showNavBar: true,
      initialIndex: 1,
      body: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 65,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
                color: Colors.deepOrange[500],
              ),
            ),
            title: Column( crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Delivering to',
                style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold,
                fontFamily: 'urfont'
                ),
                ),
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Current location', style: TextStyle(fontSize: 12),),
                    GestureDetector( onTap: (){},
                      child: ImageIcon(AssetImage('assets/Images/expand-button (1).png')))
                  ],
                ),
              ],
            ),
            leading: ImageIcon(AssetImage('assets/Images/pharmacy1.png'),),
            actions: [
              IconButton(onPressed: (){}, 
              icon: Image.asset('assets/Icons/customer-service.ico', color: Colors.white,))
            ],
          ),
          
          // bottomNavigationBar: NavBar(),
    
          body: Padding( padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black)
                    ), 
                    child: TextField(
                      onChanged: (value) => value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search by name",
                        icon: Icon(Icons.search, color: Colors.orange[600],),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  
                  Container(
                  width: double.infinity,
                  child: Text("Category",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16
                  ),
                  ),
                ),
                  SizedBox(
                  height: 20,
                ),
                
                  SingleChildScrollView( scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Material( 
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25)
                          ),
                          child: InkWell(
                            onTap: (){Navigator.pushNamed(context, "/Offers");},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/reduce.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 25,
                                    child: Text("Offers",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
    
                        Material( 
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25)
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/medicines.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 25,
                                    child: Text("Medicines",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.red[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
    
                        Material( 
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25)
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/fitness.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 25,
                                    child: Text("Vitamins",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
    
                        Material( 
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25)
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/stethoscope.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 25,
                                    child: Text("Ask Doctor",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.red[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
    
                        Material( 
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25)
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/diet.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 25,
                                    child: Text("Diet",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
    
                        Material( 
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25)
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/medical.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 25,
                                    child: Text("Men care",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.red[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
    
                        Material( 
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25)
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/heart.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 25,
                                    child: Text("Women care",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
    
                        Material( 
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25)
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/pediatrics.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 25,
                                    child: Text("Baby care",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.red[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
    
                  SingleChildScrollView( scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: (){},
                            child: Row(
                              children: [
                                Column( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("#National Doctor Day",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    
                                    SizedBox(height: 10,),
                                    Text("Thanking all doctors",
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      fontFamily: 'myfont'
                                      ),
                                      ),
                                  ],
                                ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset('assets/Images/medical (2).png', height: 110,)
                              ],
                            ),
                            style: ButtonStyle( 
                              backgroundColor: MaterialStateProperty.all(Colors.pink),
                              fixedSize: MaterialStateProperty.all(Size(300, 200)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                              ),
                              ),
                            ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          
                          ElevatedButton(
                            onPressed: (){},
                            child: Row(
                              children: [
                                Column( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("#National Doctor Day",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    
                                    SizedBox(height: 10,),
                                    Text("Thanking all doctors",
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      fontFamily: 'myfont'
                                      ),
                                      ),
                                  ],
                                ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset('assets/Images/medical (2).png', height: 100,)
                              ],
                            ),
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(Size(300, 200)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                              )
                              )
                            ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                  SizedBox(height: 50,), 
                  
                  Row(
                    children: [
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.greenAccent, width: 5),
                            ),
                            ),
                        child: Material(
                          color: Colors.grey[200],
                          child: InkWell(
                            onTap: (){Navigator.pushNamed(context, "/First");},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/Flagyl-Ovules-removebg-preview.png'),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 30,
                                    child: Text("Flagyl 500",
                                      style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width:15),
    
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.greenAccent, width: 5),
                            ),
                            ),
                        child: Material(
                          color: Colors.grey[200],
                          child: InkWell(
                            onTap: (){Navigator.pushNamed(context, "/Second");},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/Panadol-Base-24s-(3D).png', width: 105,),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 30,
                                    child: Text("Panadol",
                                      style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
    
                  Row(
                    children: [
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.greenAccent, width: 5),
                            ),
                            ),
                        child: Material(
                          color: Colors.grey[200],
                          child: InkWell(
                            onTap: (){Navigator.pushNamed(context, "/Third");},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/Flagyl-Ovules-removebg-preview.png'),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 30,
                                    child: Text("Flagyl 500",
                                      style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width:15),
    
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.greenAccent, width: 5),
                            ),
                            ),
                        child: Material(
                          color: Colors.grey[200],
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/Flagyl-Ovules-removebg-preview.png'),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 30,
                                    child: Text("Flagyl 500",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
    
                  Row(
                    children: [
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.greenAccent, width: 5),
                            ),
                            ),
                        child: Material(
                          color: Colors.grey[200],
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/Flagyl-Ovules-removebg-preview.png'),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 30,
                                    child: Text("Flagyl 500",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width:15),
    
                      Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.greenAccent, width: 5),
                            ),
                            ),
                        child: Material(
                          color: Colors.grey[200],
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: [Padding(padding: EdgeInsets.all(5)),
                                Image.asset('assets/Images/Flagyl-Ovules-removebg-preview.png'),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 30,
                                    child: Text("Flagyl 500",
                                      style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                      ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
        
                ],
              ),
              
            ),
          ),
        ),
        ),
    );
  }
}