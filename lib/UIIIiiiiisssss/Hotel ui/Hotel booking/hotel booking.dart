import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hoteldata.dart';


void main(){
  runApp(MaterialApp(home: HotelBooking(),debugShowCheckedModeBanner: false,));
}
class HotelBooking extends StatefulWidget{
  @override
  State<HotelBooking> createState() => _HotelBookingState();
}

class _HotelBookingState extends State<HotelBooking> {
  int _selectedIndex = 0;


  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(right: 100),
                          child: Text(
                            "Hello @Sbk", style: TextStyle(color: Colors
                              .grey),),
                        ),
                        Text("Find Your Favouriate Hotel", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1564064695621-5cb08cd581eb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNlbGVicml0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 3),
                      ),
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(-3, 0),
                      )
                    ],
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey,),
                        hintText: 'Search For Hotels',
                        border: InputBorder.none
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text("Popular Hotels", style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 400,
                    viewportFraction: .6,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: hotelstile.length,
                  itemBuilder: (BuildContext context, int index,
                      int realIndex) {
                    return Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset: Offset(-3, 0)
                            )
                          ],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Expanded(flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            hotelstile[index]))),
                              )),
                          Expanded(flex: 2,
                              child: Padding(padding: EdgeInsets.only(
                                  right: 100, top: 10),
                                child: Wrap(
                                  children: [
                                    Text(title1[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(title2[index], style: TextStyle(
                                        color: Colors.grey
                                    ),)
                                  ],
                                ),
                              )),
                          Expanded(flex: 1,
                              child: Padding(padding:
                              EdgeInsets.only(right: 20, left: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text(rate[index], style: TextStyle(
                                        color: Colors.blueAccent
                                    ),),
                                    Row(
                                      children: [
                                        Text(ratingg[index],
                                          style: TextStyle(
                                              color: Colors.blueAccent),),
                                        Icon(starrat[index], size: 18,
                                          color: Colors.blue,)
                                      ],
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    );
                  },
                )),
            Padding(padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hotel Packages", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                  ),
                  Text("View all")
                ],
              ),
            ),
            Expanded(child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(padding: EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Expanded(flex: 2,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)
                                  ),
                                  image: DecorationImage(fit: BoxFit.cover,
                                      image: NetworkImage(hotelstile[index]))
                              ),
                            )),
                        Expanded(flex: 1,
                            child: Wrap(
                              children: [
                                Text(
                                  title1[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(title2[index],
                                  style: TextStyle(color: Colors.grey),)
                              ],
                            )),
                        Expanded(flex: 1,
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)
                                  )
                              ),
                              child: Padding(padding: EdgeInsets.all(5),
                                child: Text("Book", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                );
              },
              itemCount: hotelstile.length,
            ),
            ),
          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}