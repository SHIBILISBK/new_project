
import 'package:flutter/material.dart.';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_project/shared%20Preference/main.dart';
import 'package:new_project/shared%20Preference/registration%20page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Loginpagee(),)
      );
}

class Loginpagee extends StatefulWidget {
  @override
  State<Loginpagee> createState() => _LoginpageeState();
}

class _LoginpageeState extends State<Loginpagee> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;
  late bool newuser;
  late String name;
  late String uname;
  late String paasw;


  void initState(){
    check_if_already_login();
    getvalue();
  }
  void getvalue() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
      uname = logindata.getString('username')!;
      paasw = logindata.getString('password')!;
    });
  }

  void check_if_already_login() async {
    logindata =await SharedPreferences.getInstance();
    newuser = (logindata.getBool('newuser') ?? true); // null ?? second
    print(newuser);

    if (newuser = false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePagggee()));
    }
  }

  void dispose(){
    // clean up the controller when the widget is disposed
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }



  var formkey = GlobalKey<FormState>();
  var showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Login page",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20),
            child: Text("To Show example of shared preference",style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
              child: TextFormField(
                controller: username_controller,
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
                    String username = username_controller.text;
                    String password = password_controller.text;

                    if (username != '' && password != '' ) {
                      print("Successful");

                      logindata.setBool('newuser', false);
                      logindata.setString('username', username);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePagggee()));
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
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Registrationnn()));
            }, child: const Text("Not a User? Register here!!!!"))
          ],
        ),
      ),
    );
  }
}
