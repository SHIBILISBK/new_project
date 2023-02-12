
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: StackDemo(),
  ));
}
class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Stack(
         children: [
           Container(color: Colors.red,width: 500,height: 500,),
           Positioned(left:20,bottom:50,child: Container(color: Colors.purple,width: 400,height: 400,)),
       Positioned(left:70,bottom:50,child:  Container(color: Colors.yellow,width: 300,height: 300,)),
       Positioned(left:50,bottom:50,child:  Container(color: Colors.green,width: 200,height: 200,))
         ],
       ),
     ),
   );
  }

}