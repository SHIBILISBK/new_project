import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Back_PressWith_alert(),
  ));
}

class Back_PressWith_alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Conform Exit"),
              content: const Text("Are you Shure do this"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text("Yes")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("NO"))
              ],
            );
          });
    }

    return WillPopScope(
        onWillPop: showAlert,
        child: const Scaffold(
          body: Center(
            child: Text("Press Back Button to Exit !!!!!"),
          ),
        ));
  }
}
