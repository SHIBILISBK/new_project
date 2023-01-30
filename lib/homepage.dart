import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "HY BUDDYES",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
    );
  }
}
