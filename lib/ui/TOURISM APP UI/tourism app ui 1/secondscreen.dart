import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/ui/TOURISM%20APP%20UI/mainpage.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   final dataID = ModalRoute.of(context)?.settings.arguments;
   final data = dummydata.firstWhere((element) => element["place"]==dataID);
   
   return Scaffold(
     appBar: AppBar(title: Text("Go Fast",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),),
     body: Padding(padding: EdgeInsets.all(20),
     child: Column(
       children: [
         Container(
           height: 500,
           decoration: BoxDecoration(image: DecorationImage(
               fit: BoxFit.cover,
               image: NetworkImage(data["image"]))),
         ),
         Text("${data["name"]}"),
         Text("${data["description"]}"),
         Text("${data["district"]}")
       ],
     ),
     ),
   );
  }
  
}