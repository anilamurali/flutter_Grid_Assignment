import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Staggered_UI extends StatelessWidget {
  var caxis=<int>[2, 2, 2, 2, 2,2];
  var maxis=<int>[3, 4, 3, 3, 4,3];
  var heights=<double>[150, 250, 150, 180, 150,170];
  var img=<String>["https://images.unsplash.com/photo-1471306224500-6d0d218be372?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1572364769167-198dcb7b520c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
    "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=499&q=80",
    "https://images.unsplash.com/photo-1461696114087-397271a7aedc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c3Vuc2V0JTIwYWVzdGhldGljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=2000&q=60",
    "https://images.unsplash.com/photo-1516616370751-86d6bd8b0651?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=821&q=80"
    ];
    var caption=<String>["Cities of Newyork",
    "Top 10 facts about Burj Khalifa",
    "Benefits of Meditation",
    "The Golden Bridge Of SanFransisco",
    "Mysteries of Mount Everest",
    "Road Trips"];
     var date = [
    "20-Jun-2013",
    "19-Jun-2013",
    "10-May-2013",
    "15-Aug-2010",
    "10-Jul-2015",
    "10-Jan-2016"
  ];
  var author = [
    "Neil Sheehan",
    "Nat Hentoff",
    "Joan Didion",
    "Lester Holt",
    "Shereen Bhan",
    "Robin Roberts"
  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("Staggered GridView"),),
    body: SingleChildScrollView(
      child: StaggeredGrid.count(crossAxisCount: 4,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: 
        List.generate(6, (index) {
          return StaggeredGridTile.count(crossAxisCellCount: caxis[index], mainAxisCellCount: maxis[index],
           child: Card(
            color: Color.fromARGB(255, 196, 193, 193),
             child: Column(
              children: [
                Container(
                  height: heights[index],
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(img[index]))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6,left: 8),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      text:  TextSpan(
                      text: caption[index],
                      style:const TextStyle(fontWeight: FontWeight.bold)
                      
                    )),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(date[index])),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(author[index])),
              )
              ],
           
                     ),
           ));

        })
      
      ),
    ),
  );
  }
  
}