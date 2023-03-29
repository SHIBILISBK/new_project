import 'package:flutter/material.dart';

class Bankdatacard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      top: 15,
      left: 15,
      child: SizedBox(
        height: 160,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 47,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStKjXN_BVXtgOBeTs1_WoUM7knP7PFfM-ZpQ&usqp=CAU"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 60),
                        child: Text(
                          "Shah Rukh Khan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Wrap(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "NPR.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.red),
                              ),
                              const Text(
                                "1,00,999.35",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.teal.shade200,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Text(
                          "281685854589641",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}