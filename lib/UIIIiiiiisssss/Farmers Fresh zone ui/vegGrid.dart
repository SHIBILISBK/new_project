import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VegGrid extends StatelessWidget{
  List<String> images =[
    "https://images.unsplash.com/photo-1561136594-7f68413baa99?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dG9tYXRvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://images.unsplash.com/photo-1518843875459-f738682238a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dmVnZXRhYmxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGcTZ4AvQ6onK-sfE91el0QNoq3ia2YZzv5Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU",
    "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
  ];
  List<String> names =[
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: .80,
            crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.green,
                          blurRadius: 8,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(images[index])),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(child: Center(child: Text(names[index]))),
                ],
              ),
            ],
          );
        });
  }

}