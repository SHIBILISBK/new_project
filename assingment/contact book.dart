import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ContactBook(),));
}

class ContactBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Contacts",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20),),
     ),
     body: ListView(
       children: [
         Card(color: Colors.white,
           child: ListTile(
    leading: const CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPbft-Xian-FVKUAr0bWmp2PHk-58k8v472DQ01RxAkxc6uQoA7MCfsNCz42GptAAIm_k&usqp=CAU")),
             title: const Text("Ajnas"),
             subtitle: const Text("8606562545"),
             trailing: Wrap(children: const [
               Icon(Icons.phone),
               SizedBox(width: 20,),
               Icon(Icons.message_outlined),
               SizedBox(width: 20,),
               Icon(Icons.arrow_forward_ios)
             ],),
           ),
         ),
         Card(color: Colors.white,
           child: ListTile(
             leading: const CircleAvatar(backgroundImage: NetworkImage("https://ichef.bbci.co.uk/news/976/cpsprodpb/F382/production/_123883326_852a3a31-69d7-4849-81c7-8087bf630251.jpg")),
             title: const Text("Akhil"),
             subtitle: const Text("4756234123"),
             trailing: Wrap(children: const [
               Icon(Icons.phone),
               SizedBox(width: 20,),
               Icon(Icons.message_outlined),
               SizedBox(width: 20,),
               Icon(Icons.arrow_forward_ios)
             ],),
           ),
         ),
         Card(color: Colors.white,
           child: ListTile(
             leading: const CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfMQ4zqAl06NLb4Qa1X0yuWmwuYUfM76qWolEBY-BdicanS_-ic1EcMy26x6ZP1lEbWVg&usqp=CAU")),
             title: const Text("Nithya"),
             subtitle: const Text("9656585778"),
             trailing: Wrap(children: const [
               Icon(Icons.phone),
               SizedBox(width: 20,),
               Icon(Icons.message_outlined),
               SizedBox(width: 20,),
               Icon(Icons.arrow_forward_ios)
             ],),
           ),
         ),
         Card(color: Colors.white,
           child: ListTile(
             leading: const CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdWiG2t4ARMkHYVhzYtoFeI1HNNFEK-kyEP60WjZPzyBlaIgK4EPaHnnrAQ1ysDjDRRj8&usqp=CAU")),
             title: const Text("Ihjaz"),
             subtitle: const Text("8956232154"),
             trailing: Wrap(children: const [
               Icon(Icons.phone),
               SizedBox(width: 20,),
               Icon(Icons.message_outlined),
               SizedBox(width: 20,),
               Icon(Icons.arrow_forward_ios)
             ],),
           ),
         ),Card(color: Colors.white,
           child: ListTile(
             leading: const CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpqhldEToi6bPaaSoQU1Z3AtRVhqgV1kGh8pXplbmAbVOx3TnwCrjtraLE2lSM7F6TBsM&usqp=CAU")),
             title: const Text("Gopika"),
             subtitle: const Text("9685741236"),
             trailing: Wrap(children: const [
               Icon(Icons.phone),
               SizedBox(width: 20,),
               Icon(Icons.message_outlined),
               SizedBox(width: 20,),
               Icon(Icons.arrow_forward_ios)
             ],),
           ),
         ),Card(color: Colors.white,
           child: ListTile(
             leading: const CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKvc1VBCxTCkMTqpQ0ntyhBfosDAX75XN9FQ6slbHjZ3-UKQRHaYCEetQ4rMd3u1Gx-TQ&usqp=CAU")),
             title: const Text("Suhail"),
             subtitle: const Text("9632965658"),
             trailing: Wrap(children: const [
               Icon(Icons.phone),
               SizedBox(width: 20,),
               Icon(Icons.message_outlined),
               SizedBox(width: 20,),
               Icon(Icons.arrow_forward_ios)
             ],),
           ),
         ),
       ],
     ),
   );
  }
}