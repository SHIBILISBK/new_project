import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyAnimation(),));
}


class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key}) : super(key: key);

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> with SingleTickerProviderStateMixin{

  Animation<double>?animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 12.0,end: 100.0).animate(controller!)..addListener(() {
      setState(() {

      });
    });
  }

  void increaseSize(){
    controller!.forward();
  }
  void dispose(){
    super.dispose();
    controller?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text("Hi Guyyzz",style: TextStyle(fontSize: animation?.value),),
          ),
          ElevatedButton(onPressed: ()=> increaseSize(), child: Text("Zoomm"))
        ],
      ),
    );
  }
}
