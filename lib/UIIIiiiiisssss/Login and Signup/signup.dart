import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/UIIIiiiiisssss/Login%20and%20Signup/login.dart';
void main (){
  runApp(MaterialApp(home: Signup(),));
}
class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          labelText: "Confirm Password",
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
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.black),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Alredy have an account?"),
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