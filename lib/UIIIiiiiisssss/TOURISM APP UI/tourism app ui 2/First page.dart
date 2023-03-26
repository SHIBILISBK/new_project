import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/ui/TOURISM%20APP%20UI/tourism%20app%20ui%202/secondpage.dart';
import 'package:new_project/ui/TOURISM%20APP%20UI/tourism%20app%20ui%202/tourism%20datas.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "five" :(context)=> TourismPpage(),
    },
    home: FirstPpage(),));
}
class FirstPpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(padding: EdgeInsets.all(15),
     child: ListView(
       children: [
         Text("Places"),
         Padding(padding: EdgeInsets.only(top: 8,bottom: 8),
         child: Text("Popular",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
         ),
         Column(
           children:
             tourismdaatas.map((traveldata) => GestureDetector(onTap: ()=>goTonext(context, traveldata["id"]),
             child: Padding(padding: EdgeInsets.only(top: 10),
             child: Container(
               height: 120,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
               image: DecorationImage(
                   fit: BoxFit.cover,
                   image: NetworkImage('${traveldata["image"]}'))
               ),
               child: Center(
                 child: ListTile(
                   leading: Text('${traveldata["place"]}',style: TextStyle(color: Colors.white,fontSize: 30),),
                 ),
               ),
             ),
             ),
             )).toList()
         )
       ],
     ),
     ),
   );
  }

 void goTonext(BuildContext context, traveldata) {
    Navigator.of(context).pushNamed("five",arguments: traveldata);
 }

}
