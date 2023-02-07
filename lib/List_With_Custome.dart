import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.orange),
    debugShowCheckedModeBanner: false,
    home: List_custom(),
  ));
}

class List_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListwithCustom"),
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [
          Icon(Icons.shopping_cart)
        ],
      ),
      body: ListView.custom(
          //childrenDelegate: SliverChildListDelegate(

            /// creating list of card way 1

            // List.generate(100, (index) {
            //   return const Card(
            //     color: Colors.red,
            //     child: Text("card1"),
            //   );
            // })

      /// creating list of card way 2
      // const  [
      //     Card(
      //       child: Text("card1"),
      //       color: Colors.blue,
      //     ),
      //     Card(
      //       child: Text("card2"),
      //       color: Colors.red,
      //     ),
      //     Card(
      //       child: Text("card3"),
      //       color: Colors.yellow,
      //     ),
      //     Card(
      //       child: Text("card4"),
      //       color: Colors.purple,
      //     ),
      //     Card(
      //       child: Text("card5"),
      //       color: Colors.pink,
      //     )
      //   ],
      // )
        childrenDelegate: SliverChildBuilderDelegate(
            (contex,index){
              return Card(
                child: Text("card4"),
                color: Colors.purple,
              );
}
        ),
      ),
    );
  }
}
