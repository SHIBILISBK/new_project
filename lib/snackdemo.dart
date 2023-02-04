import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: SnackBarDemo(),));
}
class SnackBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: ElevatedButton(
         onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar( SnackBar(
       content: const Text('Yay!SnackBar'),
       action: SnackBarAction(
         label: 'Undo',
         onPressed: () {
         },
       ),
     ));
   },
    child: const Text('Show SnackBar'),
       ),
     ),
   );
  }

}