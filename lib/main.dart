import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            // Icon(
            //   Icons.adb,
            //   size: 50,
            //   color: Colors.green,
            // ),
            Image(image: AssetImage("assets/icons/homescreen.png"),width: 100,height: 100,),
            Text(
              "My Application",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
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
