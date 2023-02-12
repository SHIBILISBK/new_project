import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: GridCount(),
  ));
}
class GridCount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.count(
         crossAxisCount:2,
       mainAxisSpacing: 20,
       crossAxisSpacing: 20,
       children: List.generate(20, (index) => const Padding(padding: EdgeInsets.all(8.0),
         child: Card(
           child: Center(
             child: Text("HELLO"),
           ),
         ),
       )),
     ),
   );
  }

}