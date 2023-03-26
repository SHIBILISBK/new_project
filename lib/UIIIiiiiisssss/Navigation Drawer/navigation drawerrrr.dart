import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: drawer(), debugShowCheckedModeBanner: false));
}

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 300,
                child: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSxrg0HX1ZiN-uOKYPlrAn3uSicvACoFzKpg&usqp=CAU"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Mammootty",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Muhammad Kutty Panaparambil Ismail, known mononymously by the hypocorism Mammootty, is an Indian actor and film producer who works predominantly in Malayalam films. He has also appeared in Tamil, Telugu, Kannada, Hindi, and English-language productions",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
        endDrawer: Drawer(
            child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.orange, Colors.pinkAccent])),
                child: ListView(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWMqr9s9OedJLunpqxFKjWKDajm9C_8xN0Iw&usqp=CAU"),
                      ),
                      title: Text(
                        "Mammootty",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Indian actor",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(Icons.close, color: Colors.white38),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: ListTile(
                      leading: Icon(Icons.dashboard, color: Colors.white38),
                      title: Text(
                        "Dashboard",
                        style: TextStyle(color: Colors.white38),
                      ),
                    ),
                  ),
                  const ListTile(
                    leading:
                        Icon(Icons.leaderboard_sharp, color: Colors.white38),
                    title: Text(
                      "Leads",
                      style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.people,
                      color: Colors.white38,
                    ),
                    title: Text(
                      "clients",
                      style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.rocket,
                      color: Colors.white38,
                    ),
                    title: Text(
                      "Projects",
                      style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.handshake_sharp, color: Colors.white38),
                    title: Text(
                      "partners",
                      style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.subscriptions, color: Colors.white38),
                    title: Text(
                      "Subscription",
                      style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.money, color: Colors.white38),
                    title: Text(
                      "Payment",
                      style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.verified_user, color: Colors.white38),
                    title: Text(
                      "Users",
                      style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.library_add_check,
                      color: Colors.white38,
                    ),
                    title: Text(
                      "library",
                      style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 100, left: 10, right: 10),
                    child: Container(
                      height: 30,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60)),
                              backgroundColor: Colors.orange.shade300),
                          onPressed: () {},
                          child: const Text("Logout")),
                    ),
                  )
                ]))));
  }
}
