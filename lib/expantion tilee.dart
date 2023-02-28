import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Expantiontilee(),
  ));

}
class Expantiontilee extends StatelessWidget {

  List colors = [Colors.red,Colors.green,Colors.blue,Colors.amber,Colors.purple];
  List datas = ["Red","Green","Blue","Amber","Purple"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("EXPANTION TILE"),
     ),
     body: ExpansionTile(
       title: const Text("COLORS"),
       subtitle: const Text("List of Name"),
       children: List.generate(5, (index) => ListTile(
         leading: CircleAvatar(backgroundColor: colors[index]),
         title: Text(datas[index]),

       ))
     ),
   );
  }

}