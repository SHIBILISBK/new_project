import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Login%20page.dart';
import 'package:new_project/shared%20Preference/loginpagee.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Registrationnn extends StatefulWidget {
  @override
  State<Registrationnn> createState() => _RegistrationnnState();
}

class _RegistrationnnState extends State<Registrationnn> {
  final name_controller = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("REGISTRATION"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Registration page",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70, top: 10),
            child: TextField(
              controller: name_controller,
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "name"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70, top: 20),
            child: TextField(
              controller: username_controller,
              decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70, top: 20),
            child: TextField(
              controller: password_controller,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Loginpage()));
              },
              child: const Text("Register"),
            ),
          )
        ],
      ),
    );
  }

  void Registrationnn() async {
    logindata = await SharedPreferences.getInstance();

    String name = name_controller.text;
    String username = username_controller.text;
    String password = password_controller.text;

    if (username != '' && password != '') {
      logindata.setString('name', name);
      logindata.setString('username', username);
      logindata.setString('password', password);

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginpagee()));
    }
  }
}
