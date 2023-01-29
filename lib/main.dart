import 'dart:async';

import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 2), () {
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginScreen()));
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.blue,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
                image: AssetImage(
                    "assets/images/img 1.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // Icon(
              //   Icons.adb,
              //   size: 50,
              //   color: Colors.green,
              // ),
              Image(
                image: AssetImage("assets/icons/homescreen.png"),
                width: 100,
                height: 100,
              ),
              // Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf3q1Plji1yDf9pI4DPEfkWYHkPUGPMnzJ2g&usqp=CAU")),
              Text(
                "My Application",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      // appBar: AppBar(
      //     title: const Text(
      //   "My Application",
      //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      // )),
      // body: const Center(
      //   child: Icon(
      //     Icons.adb_outlined,
      //     size: 50,
      //     color: Colors.green,
      //   ),
      // ),
    );
  }
}
