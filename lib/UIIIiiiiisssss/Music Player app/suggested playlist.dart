import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home:Musify() ,));
}
class Musify extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Text("Musify",style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold,color: Colors.pink[200]
              ),),),
              Padding(padding: EdgeInsets.only(top: 20,right: 300),
              child: Text("Suggested playlist",style: TextStyle(
                fontSize: 20,color: Colors.pink[200],fontWeight: FontWeight.bold
              ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CarouselSlider(
                          items: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNExDid_kUakFkkAjjozjfgpomQFAxGEyWZg&usqp=CAU"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNukHNUPgRGL_qBAfdyy3QZ-OR5wcAewALmO2BRsjEFNY-9KtnZMEuzRsDh8Wfg110aGo&usqp=CAU"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkx9jAFfXb3LFA5nej3NQnyslnostX2Ao6Yw&usqp=CAU"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj6IIE09xmpFvfapmC87J4sBHcF_mwUehsFA&usqp=CAU"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLpLqW-4aOV-7gLAylMjm0D74kwETSs4yzS1znXS0rwmiMRvYF89v08UUwTmJ8Ra9PxII&usqp=CAU"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSorv1tdFgPQz1PFDyZ4ZlRVzy0ajTRE33cLS0b3lChKgvDCFtwxxTKEc3jRNNMmvILz4I&usqp=CAU"),fit: BoxFit.cover)
                              ),
                            ),
                    ],
                    options: CarouselOptions(
                      height: 300,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                    )),
              ),
              Padding(padding: EdgeInsets.only(top: 10,right: 250),
              child: Text("Recommended For You",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.pink[200]),),),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Container(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_n5DN4QNoQC7-fKiuAcXZ-P8qXftrTSfLmg&usqp=CAU",fit: BoxFit.cover,height: 50,width: 50,),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hero",style: TextStyle(fontSize: 15,color: Colors.pink[200]),),
                          Text("Taylor Swift",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.star_border,color: Colors.pink[200],),
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.download,color: Colors.pink[200],),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Container(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB-n6lO2SaGonX9FGSLIIP15hLh9Qe-tjSbA&usqp=CAU",fit: BoxFit.cover,height: 50,width: 50,),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Unholy",style: TextStyle(fontSize: 15,color: Colors.pink[200]),),
                          Text("Sam Smith,Kim Petras",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.star_border,color: Colors.pink[200],),
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.download,color: Colors.pink[200],),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Container(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbTX1TMqiBzX7_mcw0lLYo0UGWAsGGtV_-2Q&usqp=CAU",fit: BoxFit.cover,height: 50,width: 50,),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lift Me up",style: TextStyle(fontSize: 15,color: Colors.pink[200]),),
                          Text("Rihanna",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.star_border,color: Colors.pink[200],),
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.download,color: Colors.pink[200],),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Container(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNnRS3xGbfr-ZkKsGvcajhxdkVz3-8FfOU9g&usqp=CAU",fit: BoxFit.cover,height: 50,width: 50,),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Depression",style: TextStyle(fontSize: 15,color: Colors.pink[200]),),
                          Text("Dax",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.star_border,color: Colors.pink[200],),
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.download,color: Colors.pink[200],),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Container(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB1zjhx-uTrQgZjqiv5tAMOwU7uJUP45ziLw&usqp=CAU",fit: BoxFit.cover,height: 50,width: 50,),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("I'm Good",style: TextStyle(fontSize: 15,color: Colors.pink[200]),),
                          Text("David Guetta & Bebe Rexha",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.star_border,color: Colors.pink[200],),
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.download,color: Colors.pink[200],),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Container(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1rsW_rQT63gjSVH_12PkJpn6MY7gXZKGMhQ&usqp=CAU",fit: BoxFit.cover,height: 50,width: 50,),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Bad!",style: TextStyle(fontSize: 15,color: Colors.pink[200]),),
                          Text("xxxtentacion",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.star_border,color: Colors.pink[200],),
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.download,color: Colors.pink[200],),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
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
