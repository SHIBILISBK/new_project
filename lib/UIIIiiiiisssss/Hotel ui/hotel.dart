import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raised_buttons/raised_buttons.dart';

void main(){
  runApp(MaterialApp(home: HOTELUI(),));
}
class HOTELUI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Align(alignment: Alignment.topLeft,
         child: AppBar(backgroundColor: Colors.transparent,
         elevation: 0,),),
         SizedBox(
             height: 350,
             width: 520,
             child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkLjj9iVgzbDFKSaUu4qxKXacmTtEeksfnOA&usqp=CAU",fit: BoxFit.fill,)),
         SingleChildScrollView(
           padding: const EdgeInsets.only(top: 200),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text("Howard Johnson\n Plaza",style: TextStyle(color: Colors.white,fontSize: 28.0),),
               Row(
                 children: [
                   Container(
                     padding : const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                       decoration: BoxDecoration(
                         color: Colors.purple.shade200,
                         borderRadius: BorderRadius.circular(20)
                       ),
                       child: const Text("8.4/85 reviews",style: TextStyle(color: Colors.white),)),
                   const Spacer(),
                   IconButton(
                       color: Colors.white,
                       icon: const Icon(Icons.favorite_border),
                       onPressed: (){})
                 ],
               ),
               Container(
                 padding: const EdgeInsets.all(16),
                 color: Colors.white,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisSize: MainAxisSize.min,
                   children: [
                      Row(
                        children: [
                          Expanded(child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.star,color: Colors.purple,),
                                  Icon(Icons.star,color: Colors.purple,),
                                  Icon(Icons.star,color: Colors.purple,),
                                  Icon(Icons.star,color: Colors.purple,),
                                  Icon(Icons.star_border,color: Colors.purple,),
                                ],
                              )
                            ],
                          )),
                          Column(
                            children: const [
                              Text("\$ 150"),
                              Text("/per night")
                            ],
                          )
                        ],
                      ),
                     const SizedBox(
                       height: 20,
                     ),
                     FittedBox(
                       fit: BoxFit.fitWidth,
                       child:Padding(
                         padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 150),
                           child: ElevatedButton(
                             onPressed: () {  },
                             child: const Text("     Book Now     ",style: TextStyle(color: Colors.white),
                             ),
                           ),
                         ),
                       )
                       ),
                     const SizedBox(
                       height: 20,
                     ),
                     Text("Description".toUpperCase()),
                     const Text("Take in this awe-inspiring city from Howard Johnson Plaza by Wyndham Dubai Deira, walking distance from Union Metro Station and six kilometers from Dubai International Airport (DXB). Located in the business district of Deira, we’re close to shopping at Al Ghurair Centre and Deira City Centre (reachable via our free shuttle). Easily access the Dubai Aquarium & Underwater Zoo in The Dubai Mall as well as Ski Dubai in the expansive Mall of the Emirates. Our contemporary hotel welcomes you with a fitness center, rooftop pool, and free parking. Enjoy a rooftop pool, gym, free WiFi, and on-site dining Stay satiated with our restaurant and bars; stay connected with free WiFi and a business center."),
                   ],
                 ),
               )
             ],
           ),
         ),
         Align(
           alignment:Alignment.bottomLeft,
           child: BottomNavigationBar(
             items: const [
               BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
               BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favorite"),
               BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
             ],
           ),
         )
       ],
     ),
   );
  }

}