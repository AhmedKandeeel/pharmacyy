// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pharmacyy/Custom.dart';
import 'package:pharmacyy/Search/Search.dart';
class Search1 extends StatefulWidget {
  const Search1({super.key});

  @override
  State<Search1> createState() => _Search1State();
}

class _Search1State extends State<Search1> {
  static List<Search> products_list =[
    Search("Panadol", 25, 5),
    Search("Flagyl", 35, 5)
  ];
  List <Search> display_list = List.from(products_list);
  void updateList(String value){
    setState(() {
      display_list =products_list
      .where((element) => 
      element.product_title!.toLowerCase().contains(value.toLowerCase()))
      .toList();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Custom(
      showNavBar: true,
      initialIndex: 1,
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[500],
          appBar: AppBar(elevation: 0,
          backgroundColor: Colors.blue[500],),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Search for a Product",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22, fontWeight: FontWeight.bold
                ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  onChanged: (value) => updateList(value),
                  style: const TextStyle(
                    color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white38,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "eg: Panadol",
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.orange[700],
                  ),
                ),
                const SizedBox(height: 20),
                        Expanded(
                          child: ListView.builder(
                            itemCount: display_list.length,
                            itemBuilder: (context, index) => ListTile(
                              title: Text(display_list[index].product_title!,
                              style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            subtitle: Text('${display_list[index].product_price!}',
                            style: const TextStyle(color: Colors.white),
                            ),
                            trailing: Text('${display_list[index].rating}',
                            style: const TextStyle(color: Colors.amber),
                            ),
                            leading: Image.asset(display_list[index].product_image!),
                            )
                            )
                            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}