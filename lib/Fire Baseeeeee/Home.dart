import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Fire%20Baseeeeee/Login.dart';
import 'package:new_project/Fire%20Baseeeeee/firebase%20Helper.dart';

class Hhome extends StatefulWidget {
  @override
  State<Hhome> createState() => _HhomeState();
}

class _HhomeState extends State<Hhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthHelper().signOut().then((_) => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => FireLogin())));
        },
        child: Text("SignOut"),
      ),
    );
  }
}
