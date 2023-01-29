import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "Login Page",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 70, right: 70, top: 10),
            child: TextField(
              decoration: InputDecoration(
                 prefixIcon:Icon(Icons.perm_contact_cal_rounded),
                labelText: "USERNAME",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "username",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70, right: 70, top: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.remove_red_eye_outlined),
                  labelText: "PASSWORD",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "password",
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(onPressed: () {}, child: Text("Sign.in")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("Not A User ? Register Here"),
          ),
        ],
      ),
    );
  }
}
