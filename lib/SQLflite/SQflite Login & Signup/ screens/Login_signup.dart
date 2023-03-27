import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/UIIIiiiiisssss/Login%20and%20Signup/login.dart';
import 'package:new_project/UIIIiiiiisssss/Login%20and%20Signup/signup.dart';

class Login_Signup extends StatefulWidget {
  const Login_Signup({Key? key}) : super(key: key);

  @override
  State<Login_Signup> createState() => _Login_SignupState();
}

class _Login_SignupState extends State<Login_Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Text("Hello There!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            ),
            const Padding(

              padding: EdgeInsets.all(25.0),
              child: Text(
                "Automatic identity verification which enable you to verify your identity",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
            ),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtmmBl1vTe3Jf5n1F9s9dnEgpGznX6THqPA5DvbG6ycochsCrC2Cw3feM9f0h5WOyGKz0&usqp=CAU'),


            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    minimumSize: MaterialStateProperty.all(const Size(230, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                  }, child: const Text("Login",style: TextStyle(color: Colors.white),)),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    minimumSize: MaterialStateProperty.all(const Size(230, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),

                        )
                    )
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                }, child: const Text("Sign Up",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
