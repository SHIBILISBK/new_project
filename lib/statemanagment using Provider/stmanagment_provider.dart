import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/statemanagment%20using%20Provider/provider/movie_provider.dart';
import 'package:provider/provider.dart';

import 'WishList.dart';

void main(){
  runApp(ChangeNotifierProvider<MovieProvider>(create: (BuildContext context) => MovieProvider(),
  child:MaterialApp( home: HomeNow(),)));
}

class HomeNow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var movies = context.watch<MovieProvider>().movies;
    var mylist = context.watch<MovieProvider>().myList;

    return Scaffold(
      appBar: AppBar(title: Text("Movies"),),
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton.icon(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> WishList()));
          },
              icon: Icon(Icons.favorite_border),
              label: Text("Wishlist ${mylist.length}"),
          ),
          SizedBox(height: 20,),
          Expanded(child: Padding(padding: EdgeInsets.all(8),
          child: Center(
            child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context,index){
                  final currentMovie = movies[index];
                  return Card(
                    key: ValueKey(currentMovie.title),
                    color: Colors.cyan,
                    elevation: 5,
                    child: ListTile(
                      title: Text(currentMovie.title),
                      subtitle: Text(currentMovie.time),
                      trailing: IconButton(
                        icon: Icon(Icons.favorite_border,
                        color: mylist.contains(currentMovie)
                          ? Colors.red
                          : Colors.white,),
                        onPressed: (){
                          if(!mylist.contains(currentMovie)){
                            context.read<MovieProvider>().addToList(currentMovie);
                          }else{
                            context.read<MovieProvider>().removeFromList(currentMovie);
                          }
                        },
                      ),
                    ),
                  );
                }),
          ),
          ))
        ],
      ),
      ),
    );
  }

}