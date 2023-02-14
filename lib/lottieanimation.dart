import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: LottieAnim(),
  ));
}
class LottieAnim extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          gradient:  LinearGradient(
            begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors:[Colors.red,
                Colors.yellow,
                Colors.blue
              ])
        ),
        child: ListView(
          children: [
             Lottie.asset("assets/anim/123112-cute-floating-ghost.json"),
          ],
        ),
      ),
    );
  }

}