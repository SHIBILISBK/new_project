import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Drawerrr(),
  ));
}

class Drawerrr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.grey),
        child: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8py3plJOQZUxxPXObRUrbXY1tLMHBj_I-sw&usqp=CAU"))),
                accountName: Text("David"),
                accountEmail: Text("david005@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH5WgJtgEg3WwcYzl-F8Psro2HYTEWi0MrtA&usqp=CAU"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH5WgJtgEg3WwcYzl-F8Psro2HYTEWi0MrtA&usqp=CAU"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH5WgJtgEg3WwcYzl-F8Psro2HYTEWi0MrtA&usqp=CAU"),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("Share With Me"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.timesCircle),
                title: Text("Recent"),
              ),
              ListTile(
                leading: Icon(Icons.offline_pin),
                title: Text("Offline"),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text("Uploads"),
              ),
              ListTile(
                leading: Icon(Icons.backup),
                title: Text("Backups"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
