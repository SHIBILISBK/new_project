import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/SQLflite/SQflite%20Login%20&%20Signup/%20screens/Admin.dart';
import 'package:new_project/SQLflite/SQflite%20Login%20&%20Signup/%20screens/Home.dart';
import 'package:new_project/SQLflite/SQflite%20Login%20&%20Signup/%20screens/Login_signup.dart';
import 'package:new_project/SQLflite/SQflite%20Login%20&%20Signup/db/SQLhelper.dart';
import 'package:new_project/UIIIiiiiisssss/Login%20and%20Signup/signup.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    final TextEditingController conemail = TextEditingController();
    final TextEditingController conpass = TextEditingController();

    void logincheck(String email,String password) async {
      if (email == 'admin@gmail.com' && password == '123456'){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminHome()));
      }else{
        var data = await SQLhelper.CheckLogin(email,password);
        if(data.isNotEmpty){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home(data: data,)));
          print('Login Success');
        }else if(data.isEmpty){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login_Signup()));
          print('Login Faild');
        }
      }
    }

    bool hidepass = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Login Page",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: conemail,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                validator: (text) {
                  if (text!.isEmpty ||
                      !text.contains('@') ||
                      !text.contains(".")) {
                    return "Enter valid Email!!!";
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: conpass,
                  obscureText: hidepass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (hidepass)
                            hidepass = false;
                          else
                            hidepass = true;
                        });
                      },
                      icon: Icon(
                          hidepass ? Icons.visibility : Icons.visibility_off),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 6) {
                      return "Password length should be greater than 6";
                    }
                  },
                  textInputAction: TextInputAction.next,
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                color: Colors.cyan,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                onPressed: () {
                  final valid = formkey.currentState!.validate();

                  if (valid) {

                    logincheck(conemail.text, conpass.text);

                  } else {}
                },
                child: const Text("LOGIN"),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: const Text('Not a User? Register Here!!!'))
          ],
        ),
      ),
    );
  }
}

