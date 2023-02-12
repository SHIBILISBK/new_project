import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:new_project/Mywidget.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Staggerdddd(),
  ));
}

class Staggerdddd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child:MyCustomWidget(icons: Icons.account_box_sharp,bgcolor: Colors.yellowAccent,)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child:MyCustomWidget(icons: Icons.adb_outlined,bgcolor: Colors.blueAccent,)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child:MyCustomWidget(icons: Icons.back_hand_outlined,bgcolor: Colors.orangeAccent,)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child:MyCustomWidget(icons: Icons.camera_alt,bgcolor: Colors.redAccent,)),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: Card(
                    color: Colors.orange,
                  )),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 4,
                  child: Card(
                    color: Colors.purple,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
