import 'package:flutter/material.dart';
import 'package:new_project/ui/TOURISM%20APP%20UI/mainpage.dart';
import 'package:new_project/ui/TOURISM%20APP%20UI/secondscreen.dart';

void main() {
  runApp(MaterialApp(
    home: firstscreen(),
    routes: {
      "four": (context) => SecondScreen(),
    },
  ));
}
class  firstscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Popular Places"),
     ),
     body: ListView(
       padding: EdgeInsets.all(15),
       children: dummydata.map((data)  {
         return ListTile(
           leading: Card(
             child: Image(image: NetworkImage(data["image"]),),
           ),
           title: Text(data["name"]),
           onTap: () => goToSecondScreen(context,data["place"]),
         );
       }).toList(),
     )
   );
  }

  void goToSecondScreen(BuildContext context, dataID) {
    Navigator.pushNamed(context, "four",arguments: dataID);
  }
  
}
