import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xff075E54))),
    debugShowCheckedModeBanner: false,
    home: TABex(),
  ));
}
class TABex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(
         title: const  Text("Whatsapp"),
         actions: const [
           Icon(Icons.camera_alt_outlined),
           SizedBox(width: 20,),
           Icon(Icons.search),
           SizedBox(width: 20,),
           Icon(Icons.more_vert),
         ],
         bottom: const TabBar(tabs: [
           Tab(icon: Icon(Icons.group_add),),
           Tab(text: "Chats",),
           Tab(text: "Status",),
           Tab(text: "Call",)
         ]),
       ),
       body: const TabBarView(
         children: [
           Center(child: Text("Community"),),
           Center(child: Text("Chats"),),
           Center(child: Text("Status"),),
           Center(child: Text("Call"),),
         ],
       ),
       floatingActionButton: FloatingActionButton(onPressed: (){},
       child: const Icon(Icons.message),),
       
     ),
   );
  }
  
}