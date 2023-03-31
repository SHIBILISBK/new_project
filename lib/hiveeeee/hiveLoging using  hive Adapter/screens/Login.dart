import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/screens/Registration.dart';

class Loginn extends StatelessWidget {

final email =TextEditingController();
final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Login Page"),),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: email,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'UserName',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            obscuringCharacter: '*',
            controller: pass,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password'),
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){ },
            child: Text("Login")),
        SizedBox(height: 15,),
        TextButton(onPressed: (){
          Get.to(()=> Register());
        }, child: Text("Not A User? Register!!"))
      ],
    ),
    );
  }
}
