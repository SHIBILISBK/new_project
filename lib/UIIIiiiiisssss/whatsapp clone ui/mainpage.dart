import 'package:flutter/material.dart';
import 'package:new_project/UIIIiiiiisssss/whatsapp%20clone%20ui/status.dart';

import 'call.dart';
import 'chats.dart';
import 'community.dart';


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
          actions:  [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20,),
            Icon(Icons.search),
            SizedBox(width: 20,),
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked Devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),
              ];
            }),
          ],
          bottom:  TabBar(
            labelPadding: EdgeInsets.zero,
              isScrollable: true,
              tabs: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.1,
                  child: Tab(
                    icon: Icon(Icons.groups),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: Tab(
                    icon: Text("Chats"),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: Tab(
                    icon: Text("Status"),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: Tab(
                    icon: Text("Calls"),
                  ),
                ),
            ]),
        ),
        body: TabBarView(
          children: [
            Community(),
            Chatscreen(),
            StatusScreen(),
            Callscreen()
          ],
        ),
       // floatingActionButton: FloatingActionButton(onPressed: (){},
        //  child: const Icon(Icons.message),),

      ),
    );
  }

}