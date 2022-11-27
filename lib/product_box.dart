import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  ProductBox(
      {required this.name,
      required this.price,
      required this.description,
      required this.image});

  final String name;
  final int price;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(2),
        height: 150,
        width: 700,
        margin: EdgeInsets.all(5),
        child: Card(
          elevation: 20.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          color: Color.fromARGB(223, 108, 106, 106),
          shadowColor: Color.fromARGB(255, 212, 7, 7),
          child: Row(
            children: [
              Image.asset('image/${this.image}'),
              Expanded(
                  child: Center(
                    child: Container(
                      width: 190,
                      // height: 120,
                // alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                              text: "Price=",
                              style: TextStyle(color: Colors.red,fontSize: 15.0)),
                          TextSpan(text: '${this.price}',style: TextStyle(fontSize: 12.0))
                        ]),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                          text: "Product Name=",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        TextSpan(
                            text: '${this.name}',
                            style: TextStyle(fontSize: 12.0))
                      ])),
                      RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                            text: "Product Details=",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0)),
                        TextSpan(
                            text: "${this.description}",
                            style: TextStyle(fontSize: 12.0),)
                      ]))
                    ],
                ),
              ),
                  ))
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
