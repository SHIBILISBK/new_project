import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/SQLflite/SQflite%20Login%20&%20Signup/%20screens/Login_signup.dart';
import 'package:new_project/SQLflite/SQflite%20Login%20&%20Signup/db/SQLhelper.dart';

import 'package:new_project/UIIIiiiiisssss/Login%20and%20Signup/login.dart';
void main (){
  runApp(MaterialApp(home: Signup(),));
}
class Signup extends StatelessWidget {
  var formkey1 = GlobalKey<FormState>();
  var conname = TextEditingController();
  var conemail = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();
  @override
  Widget build(BuildContext context) {

    void Addnewuser(String name, String email, String password) async {
      var id = await SQLhelper.AddNewUser(name, email, password);
      if(id != null){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_Signup()));
      }
    }
    return Scaffold(
      body: SingleChildScrollView(
      child: Form(
      child: Column(
          children: [
      const Padding(
      padding: EdgeInsets.only(top: 100.0),
      child: Text(
        "Sign up",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    ),
    const Padding(
    padding: EdgeInsets.all(16.0),
    child: Text(
    "create an Account,Its free",
    style: TextStyle(color: Colors.grey),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(25.0),
    child: TextFormField(
    validator: (email) {
    if (email!.isEmpty) {
    return "Name is required";
    } else
    return null;
    },
    textInputAction: TextInputAction.next,
    decoration: const InputDecoration(
    prefixIcon: Icon(Icons.email),
    labelText: "Name",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)))),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(25.0),
    child: TextFormField(
    validator: (email) {
    if (email!.isEmpty ||
    !email.contains("@") ||
    !email.contains(".")) {
    return "Enter valid email";
    } else
    return null;
    },
    textInputAction: TextInputAction.next,
    decoration: const InputDecoration(
    prefixIcon: Icon(Icons.email),
    labelText: "Email",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)))),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(25.0),
    child: TextFormField(
    validator: (pass1) {
    if (pass1!.isEmpty || pass1.length < 6) {
    return "Password must should be greater than 6";
    } else {
    return null;
    }
    },
    textInputAction: TextInputAction.next,
    obscureText: true,
    obscuringCharacter: '*',
    decoration: const InputDecoration(
    prefixIcon: Icon(Icons.lock),
    labelText: "Password",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)))),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(25.0),
    child: TextFormField(
    validator: (pass1) {
    if (pass1!.isEmpty || pass1.length < 6) {
    return "Password must should be greater than 6";
    } else{
    return "Password not matched";
    }
    },
      obscureText: true,
      obscuringCharacter: '*',
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText: "Conform Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
    ),
    ),
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize:
                    MaterialStateProperty.all(const Size(230, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ))),
                onPressed: () {
                  final valid1 = formkey1.currentState!.validate();
                  if(valid1){
                    /// kodutha data sheriyanekil data base ilek uplaod avan
                    Addnewuser(conname.text, conemail.text, pass.text);
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        action: SnackBarAction(label: 'Undo', onPressed: (){}),
                        content: const Text("Invalid username/password")));
                  }
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.black),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(" I Already have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()));
                    },
                    child: const Text(
                      "Login!!",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ],
            )
          ],
      ),
      ),
      ),
    );
  }

}