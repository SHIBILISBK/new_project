import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/shared%20Preference/loginpagee.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePagggee extends StatefulWidget{

  @override
  State<HomePagggee> createState() => _HomePagggeeState();
}

class _HomePagggeeState extends State<HomePagggee> {
  late SharedPreferences logindata;
  late String name;

  @override
  void initState() {
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Hai $name Welcome To My Page ',
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                logindata.setBool('newuser', true);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Loginpagee(),));
              },
              child: const Text('LogOut'),
            )
          ],
        ),
      ),
    );
  }
}