import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Grid_View1(),
  ));
}

class Grid_View1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Grid View 1"),
     ),
     body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
       children: List.generate(10, (index){
         return Card(
           child: Center(
             child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYIX4fdymadei7FiL-19pxFAWPLEJgQlNEww&usqp=CAU"),),
           ),
         );
       }),
     ),
     // body: GridView(
     //     gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
     // children: List.generate(10, (index){
     //   return Card(
     //     child: Center(
     //       child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYIX4fdymadei7FiL-19pxFAWPLEJgQlNEww&usqp=CAU"),),
     //     ),
     //   );
     // })),
   );
  }
  
}