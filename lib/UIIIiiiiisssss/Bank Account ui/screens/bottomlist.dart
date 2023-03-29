import 'package:flutter/material.dart';

class Bottomlist extends StatelessWidget {
  List amount = [
    "NPR.10,000.00",
    "NPR.11,000.00",
    "NPR.12,020.00",
    "NPR.16,300.00",
    "NPR.11,020.00",
    "NPR.12,000.00",
    "NPR.14,500.00"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
          child: Card(
            child: Container(
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 75,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          children: const [
                            Text('''
    CWDR/
    974884/9874533147487'''),
                            Padding(
                              padding: EdgeInsets.only(right: 90,),
                              child: Text("10-6-2022",style: TextStyle(fontSize: 12),),
                            ),
                          ],
                        ),
                      ),
                      Text(amount[index])
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 7,
    );
  }
}