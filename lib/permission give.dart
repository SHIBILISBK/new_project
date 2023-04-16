import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main(){
  runApp(MaterialApp(home: PermissionNN(),));
}
class PermissionNN extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
  appBar: AppBar(title: Text("Permission Handler"),),
     body: Center(
       child: Padding(
         padding: const EdgeInsets.all(20),
         child: Column(
           children: [
             ElevatedButton(
                 onPressed: requestCameraPermission,
                 child: Text(""
                     "Request Camera Permission",style: TextStyle(
                   fontSize: 16,
                 ),)),
             SizedBox(height: 20,),
             ElevatedButton(
                 onPressed: requestMultiplePermission,
                 child: Text("Request Multiple Permission",style: TextStyle(
                  fontSize: 16
                 ),
                     )),
             SizedBox(height: 20,),
             ElevatedButton(
                 onPressed: requestPermissionWithOpenSettings,
                 child: Text("Open Permission Settings",style: TextStyle(fontSize: 16),))
           ],
         ),
       ),
     ),
   );
  }


  void requestCameraPermission() async{
    /// status can either be: granted, denied, restricted or permanentlyDenied

    var status = await Permission.camera.status;
    if(status.isGranted){
      print("Permission is granted");
    }else if (status.isDenied){
      // we didn't ask for permission yet or the permission has been denied before but not permanently.
      if(await Permission.camera.request().isGranted){
        // Either the Permission was already granted before or the user just granted it.
        print("Permission was granted");
      }
    }
  }

  /// Request multiple permission at once.
  /// in this case location & storage
  void requestMultiplePermission()async {
    Map<Permission, PermissionStatus> statuses = await[
      Permission.location,
      Permission.storage,
    ].request();
    print("location permission: ${statuses[Permission.location]},"
    "storage permission : ${statuses[Permission.storage]}");
  }

  void requestPermissionWithOpenSettings() async{
    // if (await Permission.speech.isPermanentlyDenied) {
    openAppSettings();
    //}
  }
}