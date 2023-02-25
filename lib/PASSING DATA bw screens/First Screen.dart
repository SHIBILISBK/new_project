import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/PASSING%20DATA%20bw%20screens/Second%20Screen.dart';
import 'package:new_project/PASSING%20DATA%20bw%20screens/dummy%20data.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
    routes: {
      "second": (context) => SecondPage(),
    },
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Home Page"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: dummyProduct.map((product) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(product["image"]),
              ),
              title: Text(product["name"]),
              onTap: () => goToSecond(context, product["id"]),
            );
          }).toList(),
        ));
  }

  void goToSecond(BuildContext context, productID) {
    Navigator.pushNamed(context, "second", arguments: productID);
  }
}
