import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Fire%20Baseeeeee/Home.dart';
import 'package:new_project/Fire%20Baseeeeee/Signup.dart';
import 'package:new_project/Fire%20Baseeeeee/firebase%20Helper.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // fetching the current user
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(
    home: user == null? FireLogin() : Hhome(),));
}
class FireLogin extends StatefulWidget {


  @override
  State<FireLogin> createState() => _FireLoginState();
}

class _FireLoginState extends State<FireLogin> {
  final mail = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: mail,
            ),
            TextField(
              controller: pass,
            ),
            ElevatedButton(onPressed: (){
              String eemail = mail.text.trim();
              String pwd = pass.text.trim();

              AuthHelper().signIn(email : eemail ,password : pwd).then((result){

                if(result == null){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Hhome()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$result")));
                }
              });
            },
                child: Text("Login")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> registration()));
            }, child: Text("Signup Here"))
          ],
        ),
      ),
    );
  }
}
