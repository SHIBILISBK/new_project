import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.orange),
    debugShowCheckedModeBanner: false,
    home: CitesList(),));
}
class CitesList extends StatelessWidget{

  var img = <String>["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIUkg3xXwsAEiu3l_Bfc3VjOBlFo4JNQzSCA&usqp=CAU",
                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnZQdRCAkbZrglN6zzMI9AW-sUZcDRgPub1w&usqp=CAU",
                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmCLvgYBV5s3fKLCmUG22B50iiRBb9aaarAQ&usqp=CAU",
                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBvoqpP6AgfukKTa_Y_2ya87_lg9PaBA0j6Q&usqp=CAU"
  ];
  var name = <String>["Delhi","London","Vancouver","New York"];
  var sub = <String>["India","Britain","Canada","USA"];
  var sub1 =<String>["Population: 19 mill","Population: 8 mill","Population: 2.4 mill","Population: 8.1 mill"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Cites around world"),
     ),
     body: ListView.builder(
       itemCount: img.length,
         itemBuilder: (BuildContext,index){
           return Card(
             child: ListTile(
               isThreeLine: true,
               leading: Image(image: NetworkImage(img[index])),
               title:Text(name[index]) ,
               subtitle: Text("${sub[index]}\n${sub1[index]}"),
             ),
           );
         }),
   );
  }

}