import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class StatusScreen extends StatelessWidget{
  List dp = [
               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgTQ7adxDIfNmxXIZO1xIwpSMtzR_4wx6T-Q&usqp=CAU",
               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyniUWIM86F9CGljs4sqt6GkXyQy_OiXAhuQ&usqp=CAU",
               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjl1oGIeNhrUA9vZwpB7C4jUb9lySB0vwK8w&usqp=CAU",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaWPe04ve7gxfEdYYJSI54lNBlQID_tO0bAw&usqp=CAU",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5CbixtljMnoGLBpnHjiyuE9LRXmb59riCOg&usqp=CAU",
                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI8i1P2aj7F_xRhMU7Pk90vpLzJoXfxgaYKg&usqp=CAU"
  ];
  List name = ["AHD binsha","Snad","Ashil msm","Nafih","Shibila","Megha"];
  List sub = ["yesterday,6.30pm"," 2 hour ago","1 hour ago","15 minute ago","30 minute ago","10 hour ago",];
  List dp1 = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLl2k8xz4dyJ-HcF7KuibN22dykkUdT3yJNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1_cR42EG0xbOitDRliKYIzADV12GgldWLkQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFiSRJ7lRyiExo6xWPxK4RBMb_HrDEjyYXuA&usqp=CAU",

  ];
  List name1 = ["Nikitha","Atlin pkd ig","Abid trt",];
  List sub1 = ["1 minute ago","3 minute ago","30 second ago",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(8.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Stack(
                children: const [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Color.fromARGB(225, 225, 225, 225),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlGUBHzAwdmr4GUP_dBMztk1kRKzKhJve1nA&usqp=CAU"),
                      radius: 27,
                    ),
                  ),
                  Positioned(
                    right: 3,
                      bottom: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          size: 15,
                        ),
                      ),
                  ),
                ],
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Tap to add status update"),
            ),),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: Color.fromARGB(225, 227, 226, 226),
              child: Padding(padding: EdgeInsets.only(top: 8,left: 15),
              child: Text("Recent Updates",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
            ),
            SizedBox(
              height: 5,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dp1.length,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(),
              itemBuilder: (BuildContext context,int index){
                return ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(dp1[index]),
                  ),
                  title: Text(name1[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  subtitle: Text(sub1[index],style: TextStyle(fontSize: 15),),
                );
              },
                ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: Color.fromARGB(225, 227, 226, 226),
              child: Padding(padding: EdgeInsets.only(top: 8,left: 15),
              child: Text("View Updates",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),),
            ),
            SizedBox(
              height: 5,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dp.length,
              separatorBuilder: (BuildContext context,int index) =>
              Divider(),
              itemBuilder: (BuildContext context,int index){
                return ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(dp[index]),
                  ),
                  title: Text(name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  subtitle: Text(sub[index],style: TextStyle(fontSize: 15),),
                );
              },
                ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: ((){}),
        child: Icon(Icons.camera_alt_outlined),
      ),
    );
  }

}