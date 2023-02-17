import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.orange),
    debugShowCheckedModeBanner: false,
    home: BOTTOMBAR1(),
  ));
}
class BOTTOMBAR1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     /// veruthe koduthatha
     floatingActionButtonLocation: ExpandableFab.location,
     floatingActionButton: ExpandableFab(
       children: [
         FloatingActionButton.small(
           child: const FaIcon(FontAwesomeIcons.snapchat),
           onPressed: () {},
         ),
         FloatingActionButton.small(
           child: const FaIcon(FontAwesomeIcons.youtube),
           onPressed: () {},
         ),
         FloatingActionButton.small(
           child: const FaIcon(FontAwesomeIcons.telegram),
           onPressed: () {},
         ),
       ],
     ),
       // bottomNavigationBar: ConvexAppBar.badge({3: '99+', },
       //   items: const [
       //     TabItem(icon: Icons.home, title: 'Home'),
       //     TabItem(icon: Icons.map, title: 'Discovery'),
       //     TabItem(icon: Icons.add, title: 'Add'),
       //     TabItem(icon: Icons.message, title: 'Message'),
       //     TabItem(icon: Icons.people, title: 'Profile'),
       //   ],
       //   onTap: (int i) => print('click index=$i'),
       // )
     bottomNavigationBar: CurvedNavigationBar(
       backgroundColor: Colors.black87,
       items: const <Widget>[
         FaIcon(FontAwesomeIcons.whatsapp, size: 30,),
         FaIcon(FontAwesomeIcons.instagram, size: 30),
         FaIcon(FontAwesomeIcons.facebook, size: 30),
       ],
       onTap: (index) {
         //Handle button tap
       },
     ),
     body: Container(color: Colors.blueAccent),
   );
  }

}