import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/ui/TOURISM%20APP%20UI/tourism%20app%20ui%202/tourism%20datas.dart';

class TourismPpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final tourdataId = ModalRoute.of(context)?.settings.arguments;
    final tourdata = tourismdaatas.firstWhere((data) => data["id"]==tourdataId);

   return Scaffold(
     appBar: AppBar(title: Text("Place Details"),),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Image(image: NetworkImage('${tourdata["image"]}'),),
           Padding(padding: EdgeInsets.all(8),
           child: ListTile(
             title: Text('${tourdata["place"]}'),
             subtitle: Padding(padding: EdgeInsets.only(top: 8),
             child: Text('${tourdata["description"]}'),
             ),
           ),
           ),
           Padding(padding: EdgeInsets.all(10),
           child: ListTile(
             leading: Text("Places to Visit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
           ),
           ),
           Padding(padding: EdgeInsets.only(top: 10,bottom: 10),
           child: CarouselSlider(
               items: [
                 Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                     fit: BoxFit.cover,
                       image: NetworkImage("https://images.unsplash.com/photo-1519677100203-a0e668c92439?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8RXVyb3BlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                           fit: BoxFit.cover,
                           image: NetworkImage("https://images.unsplash.com/photo-1509023464722-18d996393ca8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fEphcGFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                           fit: BoxFit.cover,
                           image: NetworkImage("https://images.unsplash.com/photo-1504214208698-ea1916a2195a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8VGhhaWxhbmR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"))
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                           fit: BoxFit.cover,
                           image: NetworkImage("https://images.unsplash.com/photo-1559592413-7cec4d0cae2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fFZpZXRuYW18ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"))
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                           fit: BoxFit.cover,
                           image: NetworkImage("https://images.unsplash.com/photo-1518098268026-4e89f1a2cd8e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGl0YWx5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))
                   ),
                 ),
               ],
               options: CarouselOptions(
                 viewportFraction: 0.6,
                 enlargeCenterPage: true,
                 autoPlay: true,
                 aspectRatio: 4/1.5,
                 autoPlayCurve: Curves.easeInOutCubicEmphasized,
                 autoPlayAnimationDuration: Duration(milliseconds: 800),
                 enableInfiniteScroll: true
               )),
           )
         ],
       ),
     ),
   );
  }

}