import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';

void main(){
  runApp(MaterialApp(home: Playlist(),debugShowCheckedModeBanner: false,));
}
class Playlist extends StatelessWidget{
  get kDefaultPadding => null;

  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.black,
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           backgroundColor: Colors.black,
           floating: true,
           pinned: true,
           centerTitle:false,
           title: Row(
             children: [
               Padding(padding: EdgeInsets.only(left: 150),
               child: Text("Playlists",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.pink[200]),),
               )
             ],
           ),
           bottom: AppBar(
             backgroundColor: Colors.black,
             title: Container(
               width: double.infinity,
               height: 40,
               color: Colors.grey[600],
               child: TextField(
                 decoration: InputDecoration(
                   hintText: 'Search ...',
                   hintStyle: TextStyle(color: Colors.pink[200]),
                   suffixIcon: Icon(Icons.search_outlined,color: Colors.pink[200],)
                 ),
               ),
             )
           ),
         ),
         SliverList(delegate: SliverChildListDelegate([
           GridView(
             shrinkWrap: true,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 3),
             children: [
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                       image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSorv1tdFgPQz1PFDyZ4ZlRVzy0ajTRE33cLS0b3lChKgvDCFtwxxTKEc3jRNNMmvILz4I&usqp=CAU"),
                           fit: BoxFit.cover)
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                       image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLpLqW-4aOV-7gLAylMjm0D74kwETSs4yzS1znXS0rwmiMRvYF89v08UUwTmJ8Ra9PxII&usqp=CAU"),
                           fit: BoxFit.cover)
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                       image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj6IIE09xmpFvfapmC87J4sBHcF_mwUehsFA&usqp=CAU"),
                           fit: BoxFit.cover)
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                       image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkx9jAFfXb3LFA5nej3NQnyslnostX2Ao6Yw&usqp=CAU"),
                           fit: BoxFit.cover)
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                       image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNExDid_kUakFkkAjjozjfgpomQFAxGEyWZg&usqp=CAU"),
                           fit: BoxFit.cover)
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                       image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNukHNUPgRGL_qBAfdyy3QZ-OR5wcAewALmO2BRsjEFNY-9KtnZMEuzRsDh8Wfg110aGo&usqp=CAU"),
                           fit: BoxFit.cover)
                   ),
                 ),
               ),
             ],
           ),
         ]))
         ],
         ),
     bottomNavigationBar: CurvedNavigationBar(
         backgroundColor: Colors.black,
         items: <Widget>[
           FaIcon(FontAwesomeIcons.home,size: 20,color: Colors.pink[200],),
           FaIcon(FontAwesomeIcons.search,size: 20,color: Colors.pink[200],),
           FaIcon(FontAwesomeIcons.list,size: 20,color: Colors.pink[200],),
           FaIcon(FontAwesomeIcons.peopleLine,size: 20,color: Colors.pink[200],),
         ],
         onTap: (index){

     },
     ),
   );
  }

}