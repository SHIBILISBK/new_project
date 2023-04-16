import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/statemanagment%20using%20Provider/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class WishList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var mylist = context.watch<MovieProvider>().myList;

    return Scaffold(
      appBar: AppBar(title: Text("My WishList ${mylist.length}"),),
      body: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context,index){
        final currentmovie = mylist[index];
        return Card(
          key: ValueKey(currentmovie.title),
          child: ListTile(
            title: Text(currentmovie.title),
            subtitle: Text(currentmovie.time),
            trailing: TextButton(onPressed: (){
              context.read<MovieProvider>().removeFromList(currentmovie);
            },
            child: Text("Remove"),),
          ),
        );
      }),
    );
  }
}
