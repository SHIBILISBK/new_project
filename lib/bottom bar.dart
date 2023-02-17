import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: BttoMBar(),
  ));
}
class BttoMBar extends StatefulWidget{
  @override
  State<BttoMBar> createState() => _BttoMBarState();
}

class _BttoMBarState extends State<BttoMBar> {
  List screens = [
    const Center(child: Text('Home'),),
    const Center(child: Text('Account'),),
    const Center(child: Text('Search'),),
    const Center(child: Text('Favorite'),),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
      child: BottomNavigationBar(
        selectedItemColor: Colors.green,
        //backgroundColor: Colors.grey,
         // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
          currentIndex: index,
          onTap: (taped_index){
          setState(() {
            index = taped_index;
          });
          },
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME",backgroundColor: Colors.redAccent),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "ACCOUNT",backgroundColor: Colors.pinkAccent),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "SEARCH",backgroundColor: Colors.yellowAccent),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "FAVORITE",backgroundColor: Colors.cyanAccent),
      ]),
    ),
    body: screens[index],
  );
  }
}