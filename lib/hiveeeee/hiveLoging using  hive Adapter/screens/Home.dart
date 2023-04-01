import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homex extends StatelessWidget{
  final String email;
  Homex({required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome $email"),
      ),
    );
  }

}