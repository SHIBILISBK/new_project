import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Sliverrr(),
  ));
}
class Sliverrr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           floating: true,
           pinned: true,
           title: const Text("Sliver Appbar"),
           actions: [
             IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
             IconButton(onPressed: (){}, icon: const Icon(Icons.favorite))
           ],
           bottom: AppBar(
             elevation:0 ,
             title: Container(
               width: double.infinity,
               height: 40,
               color: Colors.white,
               child: const TextField(
                 decoration: InputDecoration(
                   hintText: "Search Here",
                   prefixIcon: Icon(Icons.search),
                   suffixIcon: Icon(Icons.camera_alt)
                 ),
               ),
             ),
           ),
         ),
         SliverList(delegate: SliverChildBuilderDelegate((context, index) {
           return Container(
             height: 300,
             child: Center(
               child: Text("INSIDE SLIVER $index",style: const TextStyle(fontSize: 30),),
             ),
           );
         },childCount: 10))
       ],
     ),
   );
  }

}