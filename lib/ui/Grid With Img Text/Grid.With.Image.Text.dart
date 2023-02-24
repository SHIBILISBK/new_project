import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Grid_extent(),
  ));
}

class Grid_extent extends StatelessWidget {
  var images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeZLVEdJeSd0wyp_Wwx8YM0QlndXY7WSwnmw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPhjUSnIW813-zJ0LSIK2W2wyHcfSSzymtnQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4-H0ejS9t3X5kJworsxzjjyyRMfiDEvxNpg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKScNX9NYPu-q6x8ctrS_QII72wLhd0V1rzA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4d9rpjFCpPSOqsOJrpXLUiElZr1OiuPNwAg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBiXAYwJ_VtTJTAbRuDcweMrzvRVuwCBIyaw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjm-oaJ37swFqZjXFi0Gm4DQiEvpWP7ucGlQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3BMIbqYIA7yvG-WJdORoi1cQaMZUY5ZquRQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnEW-KLQwD0cPFM1Ncsoxsz-_tFGNgdJQRVw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIHGKVewN3895kcwa9YLp6xIjd5MhZ7A3Xnw&usqp=CAU"
  ];
  var names = [
    "Belt",
    "Chain",
    "Glasses",
    "GoldRing",
    "Socks",
    "Perfume",
    "Watch",
    "Speaker",
    "Usb",
    "Wallet"
  ];
  var price = [350, 200, 550, 700, 250, 950, 800, 1500, 850, 420];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SHERINE"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.menu_open_sharp),
        ],
      ),
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: List.generate(
              10,
              (index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6,
                              spreadRadius: 5,
                              offset: Offset(5, 5)),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(images[index]),
                              ),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)
                                ),
                            ),
                          ),
                          Text(
                            names[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Text(
                            "\$${price[index]}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ))),
    );
  }
}
