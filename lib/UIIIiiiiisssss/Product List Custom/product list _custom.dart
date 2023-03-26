import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Listcustom(),
  ));
}

class Listcustom extends StatelessWidget {
  var img = <String>[
    "assets/icons/apple.png",
    "assets/icons/mango.png",
    "assets/icons/banana.png",
    "assets/icons/grape.png",
    "assets/icons/watermelon.png",
    "assets/icons/dragonfruit.png",
    "assets/icons/blueberry.png"
  ];
  var name = <String>[
    "Apple",
    "Mango",
    "Banana",
    "Grape",
    "Watermelon",
    "Dragonfruit",
    "Blueberry"
  ];
  var unit = <String>["Kg", "Doz", "Doz", "Kg", "Kg", "Pc", "Doz"];
  var price = <int>[20, 30, 10, 8, 25, 40, 15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product List",
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        leading: const Icon(Icons.arrow_back_ios_new),
        actions: const [Icon(Icons.shopping_cart)],
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return Card(
            color: Colors.grey[700],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image(
                  image: AssetImage(img[index]),
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                              text: "Name:",
                              style: TextStyle(color: Colors.yellow),
                              children: [
                                TextSpan(
                                  text: (name[index]),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ])),
                      RichText(
                          maxLines: 1,
                          text: TextSpan(
                              text: "Unit:",
                              style: TextStyle(color: Colors.yellow),
                              children: [
                                TextSpan(
                                  text: (unit[index]),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ])),
                      RichText(
                          maxLines: 1,
                          text: TextSpan(
                              text: "Price:",
                              style: TextStyle(color: Colors.red),
                              children: [
                                TextSpan(
                                  text: ("${price[index]}"),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ])),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Add to Cart"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[800]),
                )
              ],
            ),
          );
        }, childCount: 7),
      ),
    );
  }
}
