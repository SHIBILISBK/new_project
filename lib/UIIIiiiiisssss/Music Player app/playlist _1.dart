import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: Playlist(),debugShowCheckedModeBanner: false,));
}
class Playlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20),
            child: Center(child: Text("Playlist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.pink[200]),)),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),color: Colors.black,
                  border: Border.all(color: Colors.grey)
              ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    labelText: 'Search...',
                    labelStyle: TextStyle(color: Colors.pink[200]),
                    suffixIcon: Icon(Icons.search,color: Colors.pink[200],)
                ),
              ),
            ),
          ),
          Container(
            height: 500,
            width: double.infinity,
            child:GridView(
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
              ],),
          )
        ],

      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        color: Colors.black,
        backgroundColor: Colors.white,
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