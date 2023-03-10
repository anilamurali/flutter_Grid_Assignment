import 'package:assignment_ui/mywidget.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Staggered Grid View"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: StaggeredGrid.count(crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 3, 
            child: MyCustomWidget(icons: Icons.ac_unit_rounded,
            label: "Anila Murali",
            ),
            ),
            const StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 2, 
            child: Card(
              color: Colors.blue,
            ),
            ),
            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount:2, 
            child: MyCustomWidget(icons: Icons.ac_unit_rounded,
            label: "Amal Vijay",
            ),
            ),
            const StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, 
            child: Card(
              color: Colors.blue,
            ),
            ),
          ],),
        ),
      ),
    );
  }

}