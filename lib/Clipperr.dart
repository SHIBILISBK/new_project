import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart.';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main (){
  runApp(MaterialApp(home: Clipperr(),));
}
class Clipperr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRect(
                child: Container(
                  child: Align(
                    widthFactor: 1,
                    heightFactor: 1,
                    alignment: Alignment.center,
                    child: Image.network("https://images.unsplash.com/photo-1501472312651-726afe119ff1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGFydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(700),
                 child: Image.network("https://images.unsplash.com/photo-1495615080073-6b89c9839ce0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3F1YXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              ClipOval(
                child: Image.network("https://images.unsplash.com/photo-1677517661323-c370f7ccd852?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5M3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Image.network("https://images.unsplash.com/photo-1677196874255-ef76d683d2c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNjd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}