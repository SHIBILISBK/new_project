import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: BuilderExample(),));
}
class BuilderExample extends StatelessWidget{

  var phone = <String>["iphone 12","iphone 13 pro","iphone 13","iphone 11","iphone 14"];
  var price = <int>[999,1199,1299,899,1399];
  var phoneimg = <String>["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU2RFuYycFzV9CUvxWTDjWFR_cUovv4IxeEnbSBKPmb6LHrNdQ3Ne9IMeVTG0lQw-wW3o&usqp=CAU",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzxox8-bI6DI5EYPc7ZFBCWzO6QFS7GzsKCw&usqp=CAU",
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXp1UeRx1Ct3R4VdcYCL6GAgwdtOvWRtV43g&usqp=CAU",
                             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSHmzhac7rGHHymY0qOluJRFFv4HgI8FQOjw&usqp=CAU",
                             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM_rQFjlYgMvf8M4L9auPWdtPfL6FRo88zQw&usqp=CAU"
  ];
  var sub = <String>["Face ID,accelerometer","iphone gets the best apps first","the software will always be up-to-date","great customer support","better design"];
  var color = <int>[800,600,400,200,100];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("List Builder Example"),
     ),
     body: ListView.builder(
       itemCount: phone.length,
         itemBuilder: (BuildContext,index){
           return   Card(
             child: ListTile(
               leading: SizedBox(
                 width: 100,
                 child: Image(image: NetworkImage(phoneimg[index]),) ,
               ),
               trailing: Text("\$${price[index]}"),
               title:Text(phone[index],textAlign: TextAlign.center,) ,
               subtitle: Text(sub[index],textAlign: TextAlign.center,),

             ),
           );
         }),
   );
  }
  
}