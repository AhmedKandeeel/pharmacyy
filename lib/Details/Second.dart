// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrange[300],
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          elevation: 0,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_option_key))
          ],
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/Images/Panadol-Base-24s-(3D).png', width: 150,),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text('Pharmacy'),
                        SizedBox(width: 50,),
                        
                        Expanded(child: Column(
                          children: [],
                        ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.elliptical(50, 100),
                              bottomRight: Radius.elliptical(50, 100),
                            )
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15),
                          alignment: Alignment.topCenter,
                          height: 65,
                          width: 65,
                          child: Column(
                            children: [
                              Text('45', 
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text('L.E', 
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container( alignment: Alignment.topLeft,
                      child: 
                          Text('Panadol',
                          style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold
                          ),
                          ),
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.yellow,),
                      onRatingUpdate: (Rating) {}
                      ),
                    Container(alignment: Alignment.topRight,
                    child: Text('بانادول أدفانس مسكن سريع وفعال للآلام الخفيفة والمتوسطة بما فيها:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, height: 1.5,
                    ),
                    textDirection: TextDirection.rtl,
                    ),
                    ),
                    Container(alignment: Alignment.topRight,
                    child: Text('الصداع',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, height: 1.5,
                    ),
                    textDirection: TextDirection.rtl,
                    ),
                    ),
                    Container(alignment: Alignment.topRight,
                    child: Text('آلام العضلات',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, height: 1.5,
                    ),
                    textDirection: TextDirection.rtl,
                    ),
                    ),
                    Container(alignment: Alignment.topRight,
                    child: Text('آلام الأسنان',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, height: 1.5,
                    ),
                    textDirection: TextDirection.rtl,
                    ),
                    ),
                    Container(alignment: Alignment.topRight,
                    child: Text('التهاب المفاصل',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, height: 1.5,
                    ),
                    textDirection: TextDirection.rtl,
                    ),
                    ),
                    SizedBox(height: 10,),

                    Container(
                      width: 150,
                      height: 50,
                      decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                          ),
                          color: Colors.amber
                        ),
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/Images/minus-sign.png')),
                          Text('1'),
                          Icon(Icons.add)
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15)
                        ),
                        child: Material( color: Colors.transparent,
                          child: InkWell(
                            onTap: (){},
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_basket_outlined, color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Text("Add to card", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      );
  }
}