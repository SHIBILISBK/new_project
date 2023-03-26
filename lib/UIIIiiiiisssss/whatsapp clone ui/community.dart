import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Community extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50),
            child: Center(
              child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvUg22XyXcsueZkkiWAceKxYDoaKlvdYR7iA&usqp=CAU"),)
            ),),
            Padding(padding: EdgeInsets.only(top: 70),
            child: Text("Introducing communities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
            Padding(padding: EdgeInsets.only(top: 50,left: 20),
              child: Text("Easily organise your related groups and send announcements.Now,your communities,like neighbourhoods or schools,can have their own space."),
            ),
            Padding(padding: EdgeInsets.only(top: 50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
    primary: Colors.teal
    ),
              onPressed: (){}, child: Text("  Start your community  "),
            ),)
          ],
        ),
      );

  }
}