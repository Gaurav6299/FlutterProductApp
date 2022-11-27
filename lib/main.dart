import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_app/product_box.dart';
import 'trialbox.dart';

void main() {
  runApp(MaterialApp(
    title: "Product App",
    theme: ThemeData(primarySwatch: Colors.amber),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Products are here")),
      body: ListView(
        children: [
          Container(
            child: const Text(
              "All Products Details Are Here ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ProductBox(
              name: "Galaxy",
              price: 200,
              description: "Galaxy is better",
              image: "samsung.jpg"),
          ProductBox(
              name: "Redme 10",
              price: 2000,
              description: "Redme Product ",
              image: "redme.jpg"),
          ProductBox(
              name: "Realme 9",
              price: 15000,
              description: "Realme Product has many features",
              image: "realme.jpg"),
          ProductBox(
              name: "I-Phone 14",
              price: 1500000,
              description: "Best Mobile with functionaly",
              image: "iphone-14.jpg")
          // trialbox(),
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
