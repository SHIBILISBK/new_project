import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/PASSING%20DATA%20bw%20screens/dummy%20data.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    final productId = ModalRoute.of(context)?.settings.arguments;
    final product = dummyProduct.firstWhere((element) => element["id"]== productId);
    
   return Scaffold(
     appBar: AppBar(title: const Text("Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),),
   body: Padding(
     padding: EdgeInsets.all(20),
     child: Column(children: [
       Container(
         height: 500,
         decoration: BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.cover,
               image: NetworkImage(product["image"]))
         ),
       ),
       Text("${product["name"]}"),
       Text("${product["price"]}"),
       Text("${product["description"]}"),
       Text("${product["rating"]}")
     ],),
   ),
   );
  }
  
}