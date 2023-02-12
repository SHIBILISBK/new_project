import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Grid_Stack(),
  ));
}
class Grid_Stack extends StatelessWidget{
  var img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ9FpERxAYjw1saZzZU2CFC3w_QR1VpOtxww&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkrgIoCi-6tI1puA1_np89WcCFobwcoRbxQQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGHS0Mfc6rSogrmf67vD2rOW_HbHxKvj3Cgw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCXrdxC3gfka2IRliSjcD0mxUtx-lvcY7_Xw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVaSo3Vay9Cy6yUwDWJA-0zcH6O5etdm6Meg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdsaWZdv2UbFpzcCqAo--xUDaOap5B7gdQgQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMwXvXP7UcQFwHjEMfv2j7nyT9FUEuv068Hg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOtwQ5XocjNeUlVFQe8OOE4MI3qCHBrvSymg&usqp=CAU"
  ];
  var txt = ["USA", "ENGLAND", "FRANCE", "RUSSIA", "CANADA","INDIA","UAE","QATAR"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Ui"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount:img.length ,
          itemBuilder: (context,index){
            return Stack(
              children: [
                Padding(padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                          image: NetworkImage(img[index]))
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                    left: 15,
                    child: Text(txt[index],style: const TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize: 30 ),))
              ],
            );
          }),
    );
  }
  
}