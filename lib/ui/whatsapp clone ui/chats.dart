import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget{
  var img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgTQ7adxDIfNmxXIZO1xIwpSMtzR_4wx6T-Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyniUWIM86F9CGljs4sqt6GkXyQy_OiXAhuQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjl1oGIeNhrUA9vZwpB7C4jUb9lySB0vwK8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5CbixtljMnoGLBpnHjiyuE9LRXmb59riCOg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaWPe04ve7gxfEdYYJSI54lNBlQID_tO0bAw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLl2k8xz4dyJ-HcF7KuibN22dykkUdT3yJNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI8i1P2aj7F_xRhMU7Pk90vpLzJoXfxgaYKg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFiSRJ7lRyiExo6xWPxK4RBMb_HrDEjyYXuA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1_cR42EG0xbOitDRliKYIzADV12GgldWLkQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsxpJxFOtoiJhB9nvQsEsHXmgTAatQD7o7-Q&usqp=CAU"
  ];
var name =["AHD binsha","Snad","Ashil msm","Nafih","Shibila","Megha","Nikitha","Atlin pkd ig","Abid trt","thomas"];
var icn =[
  Icons.check,
  Icons.done_all,
  Icons.done_all,
  Icons.done_all,
  Icons.image,
  Icons.done_all,
  Icons.done_all,
  Icons.check,
  Icons.done_all,
  Icons.check,
];
var txt = [
  "hy",
  "hello",
  "poda",
  "nee entha inn varanje",
  "ohh",
  "ok",
  "ij one vilichina",
  "evide..",
  "nee entha njan phone vilichitt edukathe?",
  "telegram nok"
];
var time=[
  "02:05pm",
  "11:30am",
  "07:15am",
  "yesterday",
  "12/02/23",
  "15/02/23/",
  "yesterday",
  "11/01/23",
  "03/02/23",
  "25/01/23"
];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(
       itemCount: img.length,
         itemBuilder: (BuildContext,index){
           return ListTile(
             leading: CircleAvatar(
               radius: 28,
               backgroundImage: NetworkImage(img[index]),
             ),
             title: Text(name[index],style: TextStyle(fontWeight: FontWeight.bold),),
             subtitle: Row(
               children: [Icon(icn[index]),Text(txt[index])],
             ),
             trailing: Padding(
               padding: EdgeInsets.only(bottom: 25),
               child: Text(time[index],style: TextStyle(fontSize: 12),),
             ),
           );
         }),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.teal,
       onPressed: (){},
       child: Icon(Icons.message),
     ),
   );
  }

}