import 'package:flutter/material.dart';

class Stack_UI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var placeimg=<String>["https://images.unsplash.com/photo-1501466044931-62695aada8e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2FzaGluZ3RvbnxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1503614472-8c93d56e92ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2FuYWRhfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1547448415-e9f5b28e570d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cnVzc2lhfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZW5nbGFuZHxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://media.istockphoto.com/id/1324189687/photo/arc-de-triomphe-from-the-sky-paris.jpg?b=1&s=170667a&w=0&k=20&c=njR3Id6dAMM5XtTUdxTov4yWfTAjVn6w10YucDfeUJY=",
    "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1538332576228-eb5b4c4de6f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmlubGFuZHxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1543832923-44667a44c804?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bG9uZG9uJTIwZW5nbGFuZHxlbnwwfHwwfHw%3D&w=1000&q=80"
    ];
    var place=<String>["USA","Canada","Russia","England","France","Paris","Finland","London"];
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View"),),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20), 
        itemCount: 8,
        itemBuilder: (context,index){
          return Stack(
            children: [
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(placeimg[index])),
                      
                    ),
                   
                  ),
                ),
              ),
              Positioned(
              bottom: 20,
              left: 15,
                child:  Text(place[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),))
            ],
          );

        }),
    );
  }

}