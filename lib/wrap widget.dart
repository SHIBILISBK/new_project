import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: wrappp(),));
}
class wrappp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        //height: 300,
        color: Colors.purple,
        margin:  EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Wrap(
          //direction: Axis.vertical,
        children: [
          MyWidget(),
          MyButten("5"),
          MyWidget(),
          MyWidget(),
          MyChip("ssk"),
        ],
        ),
      )
    );
  }

}

class MyChip extends StatelessWidget{
  final String name;
  MyChip(this.name);
  @override
  Widget build(BuildContext context) {
   return Padding(padding: EdgeInsets.symmetric(horizontal: 5),
   child: Chip(
     backgroundColor: Colors.lightBlueAccent,
     label: Text(name),
   ),
   );
  }
}

class MyWidget extends StatelessWidget {
 // final String text;
 // MyWidget(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 50,
      height: 50,
      color: Colors.yellow.shade700,
    );
  }

}

class MyButten extends StatelessWidget {

  final String text;
  MyButten(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
    child: ElevatedButton(
      child: Text(text),
      onPressed: (){},
    ),
    );
  }

}



