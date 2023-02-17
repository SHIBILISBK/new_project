import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Callscreen extends StatelessWidget{

  var img = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgTQ7adxDIfNmxXIZO1xIwpSMtzR_4wx6T-Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5CbixtljMnoGLBpnHjiyuE9LRXmb59riCOg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaWPe04ve7gxfEdYYJSI54lNBlQID_tO0bAw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLl2k8xz4dyJ-HcF7KuibN22dykkUdT3yJNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI8i1P2aj7F_xRhMU7Pk90vpLzJoXfxgaYKg&usqp=CAU",
  ];
  var name =["AHD binsha","Nafih","Shibila","Megha","Nikitha"];
  var icon =[Icons.call_made,
      Icons.call_made,
    Icons.call_received,
    Icons.call_received,
    Icons.call_made,
  ];
  var txt = [
    "Just now",
    "Yesterday,5:18pm",
    "8 February,12:57am",
    "5 February,3:25pm",
    "31 January,9:00pm",
    "30 January,1:0am"
  ];
  var tail = [
    Icons.phone,
    Icons.videocam,
    Icons.phone,
    Icons.phone,
    Icons.videocam
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
             title: Text(name[index]),
             subtitle: Row(
               children: [
                 Icon(icon[index],color: Colors.green,),
                 Text(txt[index])
               ],
             ),
             trailing: Icon(tail[index],color: Colors.green,),
           );
         }),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.teal,
       onPressed: (){},
       child: Icon(Icons.add_call),
     ),
   );
  }

}

