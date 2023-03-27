
import 'package:flutter/material.dart';
import 'package:new_project/UIIIiiiiisssss/Login%20and%20Signup/Login_signup.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Login_Signup(),
    );

  }
}


