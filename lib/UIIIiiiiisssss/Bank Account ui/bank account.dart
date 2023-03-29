import 'package:flutter/material.dart';
import 'package:new_project/UIIIiiiiisssss/Bank%20Account%20ui/screens/bankbody.dart';
import 'package:new_project/UIIIiiiiisssss/Bank%20Account%20ui/screens/bankdatacard.dart';
import 'package:new_project/UIIIiiiiisssss/Bank%20Account%20ui/screens/bottomlist.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: BankApp()),
  ));
}

class BankApp extends StatelessWidget {
  const BankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("Welcome ! SRK"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.qr_code_scanner,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 85,
                    color: Colors.red,
                  ),
                  Container(
                    height: 110,
                  ),
                ],
              ),
              Bankdatacard(), //title card
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 20),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Image(
                      width: 20,
                      height: 20,
                      image: NetworkImage(
                          "https://cdn3.iconfinder.com/data/icons/arrows-85/24/Arrow-15-512.png")),
                ),
                Text(
                  "WOULD YOU LIKE TO ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(height: 250,
              child: BankBody()), //grid view details
          Padding(
            padding: EdgeInsets.only(left: 20,top: 10),
            child: Row(
              children: const [
                Image(
                    width: 20,
                    height: 20,
                    image: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/arrows-85/24/Arrow-15-512.png")),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "LAST TRANSACTIONS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(flex: 6, child: Bottomlist()), //Last Transaction list
        ],
      ),
    );
  }
}