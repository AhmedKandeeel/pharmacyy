// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class First extends StatelessWidget {
  const First({super.key});

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
            Image.asset('assets/Images/Flagyl-Ovules-removebg-preview.png', height: 250,),
            Expanded(
              child: SingleChildScrollView(
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
                                Text('25', 
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
                            Text('Flagyl 500',
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
                      child: Text('يعد دواء فلاجيل من المضادات الحيوية فهو يحتوي على المادة الفعالة ميترونيدازول شائعة الاستخدام، وهي من عائلة النيتروايميدازول، يستخدم فلاجيل دواء بصورة متكررة لعلاج التهابات الجهاز الهضمي كما في داء الأميبيات، والجيارديات.',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, height: 1.5,
                      ),
                      textDirection: TextDirection.rtl,
                      ),
                      ),
                      SizedBox(height: 10,),
              
                       Container(
                        width: 120,
                        height: 40,
                        decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                            ),
                            color: Colors.blue
                          ),
                        child: Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/Images/minus-sign.png')),
                            SizedBox(width: 15,),
                            Text('1', style: TextStyle(fontSize: 18),),
                            SizedBox(width: 15,),
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
            ),
          ],
        ),
      ),
      );
  }
}