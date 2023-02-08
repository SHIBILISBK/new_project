import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: GridWithCard(),
  ));
}

class GridWithCard extends StatelessWidget {

  var color = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.redAccent,
    Colors.red,
    Colors.blueAccent,
    Colors.lightGreen,
    Colors.purple
  ];
  var name = [
    "Home",
    "GoogleDrive",
    "Camera",
    "Facebook",
    "Whatsapp",
    "Instagram",
    "Snapchat",
    "Google"
  ];
  var icons = [
    FaIcon(FontAwesomeIcons.home),
    FaIcon(FontAwesomeIcons.googleDrive),
    FaIcon(FontAwesomeIcons.camera),
    FaIcon(FontAwesomeIcons.facebook),
    FaIcon(FontAwesomeIcons.whatsapp),
    FaIcon(FontAwesomeIcons.instagram),
    FaIcon(FontAwesomeIcons.snapchat),
    FaIcon(FontAwesomeIcons.google)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid With Card"),),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20
          ),
          itemCount: icons.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 6,
                          spreadRadius: 5,
                          offset: Offset(3, 5)
                      )
                    ],
                    borderRadius: BorderRadius.circular(20), color: color[index]
                ),
                child: Center(
                  child: ListTile(
                    title: Text(name[index]),
                    leading: (icons[index]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
