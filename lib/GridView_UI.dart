import 'package:flutter/material.dart';
class GridView_UI extends StatelessWidget {
  var img=<String>["https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRpZGFzJTIwc2hvZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3DR-lnVFUL0d8vlZdC__As8mOkUWIXUrclg&usqp=CAU",
  "https://images.unsplash.com/photo-1622560481156-01fc7e1693e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHNjaG9vbCUyMGJhZ3xlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1590548784585-643d2b9f2925?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bmVja2xhY2V8ZW58MHx8MHx8&w=1000&q=80",
  "https://media.istockphoto.com/id/1364899546/photo/leather-belt-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=zJhO2hllFG-TjZD4rWikGbHcjVIkxzS-eZYwtv6A_-8=",
  "https://media.istockphoto.com/id/1316582885/photo/diamond-earrings-on-black.jpg?b=1&s=170667a&w=0&k=20&c=wtddRRKLrE7plT8WpEX6vXCGv3Uv9Pfy8XWyMHkYqNQ=",
  "https://media.istockphoto.com/id/1282933858/photo/set-of-long-socks-white-gray-black-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=OwEfoWz3sOewBfZnfia0EME_1_IDFBCntrXsV3qY9NM=",
  "https://images.unsplash.com/photo-1475178626620-a4d074967452?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8amVhbnN8ZW58MHx8MHx8&w=1000&q=80",

  ];
  var name=<String>["Shoes","Sunglasses","Bag","Necklace","Belt","Earrings","Socks","Jeans"];
  var price=<int>[120,58,40,90,64,30,59,130];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text("SHRANE"),
      leading:  const Icon(Icons.menu),
      actions: const [
        Icon(Icons.search),
        Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Icon(Icons.dashboard_customize_outlined),
        )
      ],),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10), 
      itemCount: 8,
      itemBuilder: (context,index){
        return Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: NetworkImage(img[index]),
                  fit: BoxFit.fill)
                 ),                 
                  
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  children: [
                   Container(
                    alignment: Alignment.bottomLeft,
                    child:  Text(name[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    
                   ),
                   Container(
                    alignment: Alignment.bottomLeft,
                    child: Text("\$${price[index]}"),)
                  ],
                ),
              )
            ],
          ),
        

        );
      }),

    );
  }
}