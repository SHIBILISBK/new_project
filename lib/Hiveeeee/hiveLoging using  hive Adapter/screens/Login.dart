import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/database/DBFunction.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/model/User_model.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/screens/Home.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/screens/Registration.dart';
import 'package:sqflite/sqflite.dart';

class Loginn extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
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
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () async {
          final userlist = await DataBasee.instance.getUser();
          checkUser(userlist);// check the enter value if found in db list

            email.text = "";
            pass.text = "";
          }, child: Text("Login")),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                Get.to(() => Register());
              },
              child: Text("Not A User? Register!!"))
        ],
      ),
    );
  }

 Future<void> checkUser(List<User> userlist) async{
    final mail = email.text.trim();
    final pwd = pass.text.trim();
    bool isUserFound = false;
    final validateEmpty = await ValidateLogin(mail,pwd);

    if (validateEmpty == true){
      await Future.forEach(userlist, (users) {
        if(users.email == mail && users.password == pwd){
          isUserFound = true;
        }else{
          isUserFound = false;
        }
      });

      if(isUserFound == true){
        Get.offAll(()=> Homex(email : mail));
        Get.snackbar("Success", "Logined as $mail");
      }else{
        Get.snackbar("Fails", "Login Failed");
      }
    }
 }

 Future<bool> ValidateLogin(String mail, String pwd) async {
    if(mail != '' && pwd != ''){
      return true;
    }else{
      Get.snackbar("Error", "Fields must not be empty");
      return false;
    }
 }
}
