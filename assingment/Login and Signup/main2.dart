import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoginandSignup()));
}

class LoginandSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjCaMV8rUiYk4BWg7HGoViyNojy6-hAI0WwA&usqp=CAU"))),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Center(
                child: Text(
                  "Hello There !",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "Automatic identity verification which enable you to verify your identity ",
                style: TextStyle(color: Colors.grey),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
