import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: EXPANTIONTILEUI(),
  debugShowCheckedModeBanner: false,
  ));
}
class EXPANTIONTILEUI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: Colors.cyan[200],
   body: ListView(
     children: [
       SizedBox(
         height: 20,
       ),
       Center(
         child: Text("EXPERIENCE",
         style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black),),
       ),
       Stack(
         children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),
             child: Lottie.network("https://assets9.lottiefiles.com/packages/lf20_vwcugezu.json",
             fit: BoxFit.fill,
               height: 230,
               width: 500,
             ),
            ),
           Positioned(
               left: 10,
               top: 25,
               bottom: 10,
               right: 10,
               child: ExpansionTile(title: Text("TRAVEL",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 35)),
               subtitle: Text("3 Places",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
               children: [
                 ListTile(
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage(
                         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1kBv3TfHfvFJTfWg5r0ghygHbdq0nSln2OQ&usqp=CAU"
                     ),
                   ),
                   title: Text("Munnar"),
                 ),
                 ListTile(
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage(
                         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlTvW1-NOj3SDf3bzVba2GUUknuV6NJyw15g&usqp=CAU"
                     ),
                   ),
                   title: Text("KOdaikanal"),
                 ),
                 ListTile(
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage(
                         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT34E0EflEJdznDXU6EpTjvnlbbbAJUz5geWw&usqp=CAU"
                     ),
                   ),
                   title: Text("Ooty"),
                 )
               ],
               ))
         ],
       ),
       Stack(
         children: [
           Card(
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(40)
             ),
             child: Lottie.network("https://assets8.lottiefiles.com/packages/lf20_b9p9fqsk.json",
               fit: BoxFit.fill,
               height: 230,
               width: 500,
             ),
           ),
           Positioned(
               left: 10,
               top: 25,
               bottom: 10,
               right: 10,
               child: ExpansionTile(title: Text("GAMING",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 35)),
                 subtitle: Text("2 Games",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                 children: [
                   ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage(
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBMQnGoys82J8QhhwJDkECU_5wa7uF-cTX_A&usqp=CAU"
                       ),
                     ),
                     title: Text("Call of Duty"),
                   ),
                   ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage(
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMj_3GkS-Vjab1wHeXeHfTg7AmOK5ARgczZw&usqp=CAU"
                       ),
                     ),
                     title: Text("Grand Theft Auto V"),
                   ),
                 ],
               ))
         ],
       ),
       Stack(
         children: [
           Card(
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(40)
             ),
             child: Lottie.network("https://assets2.lottiefiles.com/private_files/lf30_F6EtR7.json",
               fit: BoxFit.fill,
               height: 230,
               width: 500,
             ),
           ),
           Positioned(
               left: 10,
               top: 25,
               bottom: 10,
               right: 10,
               child: ExpansionTile(title: Text("MOVIE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 35)),
                 subtitle: Text("4 Movies",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                 children: [
                   ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage(
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRDd07PFEx0mWau0ktv2CHAylrtJt3CCm_CA&usqp=CAU"
                       ),
                     ),
                     title: Text("K.G.F"),
                   ),
                   ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage(
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCH_VSQNt7NFT4xTLkRhUB5omWibE621OXXw&usqp=CAU"
                       ),
                     ),
                     title: Text("Beeshma Parvam"),
                   ),
                   ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage(
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWIMBTyrBXXujvRV8zAdhVSwQmnGzQHPe3hQ&usqp=CAU"
                       ),
                     ),
                     title: Text("Bahubali"),
                   ),
                   ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOMRu-jDw0HQmymlvdQyeXRcCEU1efB5datg&usqp=CAU"),
                     ),
                     title: Text("Pathan"),
                   )
                 ],
               ))
         ],
       ),
     ],
   ),
 );
  }
  
}