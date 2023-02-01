import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart.';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_project/homepage.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Loginpage(),);
  })
  );
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var formkey = GlobalKey<FormState>();
  var showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login With Validation"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Login page",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_box_sharp),
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "username"),
                validator: (Username) {
                  if (Username!.isEmpty || !Username.contains("@")) {
                    return 'Enter a Valid Email';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 20),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(showpass){
    showpass = false;
    }else{
                          showpass = true;
                        }
                      });
                    }, icon:Icon( showpass == true ? Icons.visibility_off_outlined : Icons.visibility)),
                    labelText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "password"),
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Not a Valid Password';
                  } else {
                   return null;

                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      Fluttertoast.showToast(
                          msg: "Login Failed",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          //timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: const Text("LOGIN")),
            )
          ],
        ),
      ),
    );
  }
}
