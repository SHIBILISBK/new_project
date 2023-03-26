import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotelhome(),
  ));
}

class Hotelhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            expandedHeight: 200,
            leading: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.menu),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.favorite_border),
              ),
            ],
            flexibleSpace: ListView(
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Center(

                    child:
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child:
                      Text(
                        "Type your location",
                        style: TextStyle(
                            color: Colors.yellowAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.search)),
                            ),
                            hintText: "Kerala,Ladakh,Goa"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(5)),
                      height: 100,
                      width: 120,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.hotel,
                              color: Colors.white,
                            ),
                            Text("HOTEL", style: TextStyle(color: Colors.white))
                          ]),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.cyan[300],
                          borderRadius: BorderRadius.circular(5)),
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.restaurant,
                            color: Colors.white,
                          ),
                          Text(
                            "RESTAURANT",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(5)),
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.local_cafe,
                            color: Colors.white,
                          ),
                          Text(
                            "CAFE",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://thumbs.dreamstime.com/b/hotel-room-beautiful-orange-sofa-included-43642330.jpg"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 10.0,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 30,
                            color: Colors.white,
                            child: Text("\$40"),
                          ),
                        ),
                        const Positioned(
                            right: 10,
                            top: 10,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Row(
                      children: const [
                        Text(
                          "Awesome room near LEH",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Row(
                      children: const [
                        Text(
                          "LEH, Ladakh",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Text("(220 reviews)")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 10.0,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 30,
                            color: Colors.white,
                            child: Text("\$60"),
                          ),
                        ),
                        const Positioned(
                            right: 10,
                            top: 10,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Row(
                      children: const [
                        Text(
                          "Budget Friendly room near goa",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    child: Row(
                      children: const [
                        Text(
                          "Goa,Baga",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.green,
                        ),
                        Text("(120 reviews)")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}