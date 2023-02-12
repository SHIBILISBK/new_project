import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Grid_Custom(),
  ));
}
class Grid_Custom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.custom(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 20,crossAxisSpacing: 20),
         childrenDelegate: SliverChildBuilderDelegate((context, index){
           return Image(image: AssetImage("assets/images/img 1.jpg"));
         },childCount: 20)),
   );
  }

}