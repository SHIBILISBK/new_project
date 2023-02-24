import 'package:flutter/material.dart';
import 'package:new_project/ui/Farmers%20Fresh%20zone%20ui/vegGrid.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: farmers(),
  ));
}

class farmers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor:  Colors.green,
            title: const Text("FARMERS FRESH ZONE",style: TextStyle(fontWeight: FontWeight.bold),),
            actions: [
              Padding(padding: const EdgeInsets.only(right: 30),
                child: Row(
                  children: const [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 5,),
                    Text("Kochi"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              )
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
              flexibleSpace: Padding(padding: const EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Padding(padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(icon: Icon(Icons.search),
                    hintText: "Search for Vegetables,Fruits.."),
                  ),),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Center(
                      child: Text("VEGETABLES",textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.green),),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Center(
                      child: Text("FRUITS",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.green),),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Center(
                      child: Text("EXOTIC",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.green),),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Center(
                      child: Text("FRESH CUTS",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.green),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(padding: const EdgeInsets.only(top: 2),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1542223189-67a03fa0f0bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"))
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: Container(
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black38)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.timer),
                        Text("30MIN POLICY")
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.my_location_rounded),
                      Text("TRACEABILITY")
                    ],),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.food_bank),
                      Text("LOCAL SOURCING")
                    ],)
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(padding: EdgeInsets.only(left: 10,top: 20),
              child: Text("Shop By Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: VegGrid(),
          )
        ],
    ));
  }
}
