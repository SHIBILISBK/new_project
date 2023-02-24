import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rive/rive.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: BottommSheett(),
  ));
}
class BottommSheett extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:  Stack(
       children: [
         RiveAnimation.network("https://cdn.rive.app/animations/vehicles.riv",
             fit: BoxFit.cover),
         Center(
         child: GestureDetector(
           onDoubleTap: (){
             showsheet(context);
           },
             child: const Text("Click Here")),
       ),
    ] ),
   );
  }
  void showsheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
       child: Column(
         children:  [
           ListTile(
             leading: Logo(Logos.twitter),
             title: Text("Twitter"),
           ),
           ListTile(
             leading: Logo(Logos.instagram),
             title: Text("Instagram"),
           ),
           ListTile(
             leading: Logo(Logos.github),
             title: Text("Github"),
           ),
           ListTile(
             leading: Logo(Logos.google),
             title: Text("Google"),
           ),
           ListTile(
             leading: Logo(Logos.instagram),
             title: Text("Stories"),
           )
         ],
       ),
      );
    });
  }

}