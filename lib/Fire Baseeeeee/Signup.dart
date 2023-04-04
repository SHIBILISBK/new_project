import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Fire%20Baseeeeee/Login.dart';
import 'package:new_project/Fire%20Baseeeeee/firebase%20Helper.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: registration(),));
}
class registration extends StatefulWidget{
  @override
  State<registration> createState() => registrationState();
}

class registrationState extends State<registration> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(20),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextField(
             controller: email,
             decoration: InputDecoration(
               border: OutlineInputBorder(),hintText: "Email",
               prefixIcon: Icon(Icons.email_outlined)
             ),
           ),
           TextField(
             controller: password,
             decoration: InputDecoration(
               border: OutlineInputBorder(),hintText: "Password",
               prefixIcon: Icon(Icons.lock_outline)
             ),
           ),
           ElevatedButton(onPressed: (){
             String mail = email.text.trim();
             String pwd = password.text.trim();
             AuthHelper().signUP(email : mail,password : pwd).then((result){
               if (result == null){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FireLogin()));
               }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
               }
             });

           },
               child: Text("SignUp"))
         ],
       ),
     ),
   );
  }
}