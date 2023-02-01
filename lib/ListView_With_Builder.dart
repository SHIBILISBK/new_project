import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class List_With_Builder extends StatelessWidget{

  var data = <String>['data1','data2','data3','data4','data5'];
  var color = <int>[800,600,400,200,100];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(
      title: Text("ListView With Builder"),
    ),
    body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext,index){
          return Container(
            height: 100,
            child: Text(data[index]),
            color: Colors.green[color[index]],
          );
        }),
  );
  }

}