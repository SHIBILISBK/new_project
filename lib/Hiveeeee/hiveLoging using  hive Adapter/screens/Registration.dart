import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/database/DBFunction.dart';
import 'package:new_project/hiveeeee/hiveLoging%20using%20%20hive%20Adapter/model/User_model.dart';

class Register extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
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
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () async{
                final userlist = await DataBasee.instance.getUser();
                validateSignUp(userlist);
                email.text ="";
                pass.text = "";
              },
              child: Text("Register")),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  void validateSignUp(List<User> userlist) async {
    final mail = email.text.trim();
    final pwd = pass.text.trim();
    bool isUserFound = false;
    final emilvalidation = EmailValidator.validate(mail);

    if (mail != "" && pwd != "") {
      if (emilvalidation == true) {

        await Future.forEach(userlist, (users) {
          if(users.email == mail){
            isUserFound = true;
          }else{
            isUserFound = false;
          }
        });
        if(isUserFound == true){
          Get.snackbar("Error", "User Already Registered");
        }else{
        final passvalidation = checkPassword(pwd);
        if(passvalidation == true) {
          final user = User(email: mail, password: pwd);
          await DataBasee.instance.userSignUp(user);
          Get.back();
          Get.snackbar("Success", "Account Created");
        }
        }
        }else{
        Get.snackbar("Error", "Please Provide Valid Email",colorText: Colors.cyan);
      }
    }else{
      Get.snackbar("Error", "Fields Can't be Empty",colorText: Colors.red);
    }
  }

  bool checkPassword(String pwd) {
    if (pwd.length < 6) {
      Get.snackbar("Error", "Password length should be greater than 6",colorText: Colors.blue);
      return false;
    } else {
      return true;
    }
  }
}
