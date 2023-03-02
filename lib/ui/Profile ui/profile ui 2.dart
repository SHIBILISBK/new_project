import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ProfilE_UI(),
  debugShowCheckedModeBanner: false,));
}
class ProfilE_UI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.arrow_back),
              trailing: Icon(Icons.menu),
            ),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/sbk2.jpg"),
            ),
            Padding(padding: const EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 30),
            child: SizedBox(
              height: 30,
              width: 250,
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network("https://cdn-icons-png.flaticon.com/512/5968/5968764.png"),
                  Image.network("https://cdn-icons-png.flaticon.com/512/3670/3670151.png"),
                  Image.network("https://cdn-icons-png.flaticon.com/512/145/145807.png"),
                  Image.network("https://cdn-icons-png.flaticon.com/512/733/733609.png"),
                ],
              ),
            ),
            ),
            Column(
              children: [
                const Text("Shibili Sbk",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
                const Padding(padding: EdgeInsets.only(bottom: 15),
                child: Text("@SS"),
                ),
                const Text("Mobile App Developer",style: TextStyle(fontSize: 15),),
                Padding(padding: const EdgeInsets.only(top: 20),
                child: Container(
                  margin: const EdgeInsets.only(left: 10,right: 10),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(padding: const EdgeInsets.only(bottom: 15),
                        child: Container(decoration: BoxDecoration(
                          color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)
                        ),
                        child: const ListTile(
                          leading: Icon(Icons.private_connectivity_outlined),
                          title: Text("Privacy"),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                        ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 15),
                          child: Container(decoration: BoxDecoration(
                              color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)
                          ),
                            child: const ListTile(
                              leading: Icon(Icons.settings),
                              title: Text("Settings"),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 15),
                          child: Container(decoration: BoxDecoration(
                              color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)
                          ),
                            child: const ListTile(
                              leading: Icon(Icons.push_pin_rounded),
                              title: Text("Purchase History"),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 15),
                          child: Container(decoration: BoxDecoration(
                              color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)
                          ),
                            child: const ListTile(
                              leading: Icon(Icons.support_agent_outlined),
                              title: Text("Help and Support"),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 15),
                          child: Container(decoration: BoxDecoration(
                              color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)
                          ),
                            child: const ListTile(
                              leading: Icon(Icons.groups),
                              title: Text("Invite Friend"),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 15),
                          child: Container(decoration: BoxDecoration(
                              color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)
                          ),
                            child: const ListTile(
                              leading: Icon(Icons.login),
                              title: Text("Logout"),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}