import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Grid_Extent(),
  ));
}
class Grid_Extent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.extent(
        maxCrossAxisExtent: 70,
      mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        children: [
          Container(
            child: Column(
              children: [
                Image.asset("assets/icons/apple.png",width: 60,height: 50,),
                Text("Apple"),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Image.asset("assets/icons/banana.png",width: 60,height: 50,),
                Text('Banana')
              ],
            ),
          )
        ],
    ),
  );
  }

}