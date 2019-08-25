import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("hello flutter"),
            centerTitle:true,
          ),
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                childAspectRatio: 1.75
            ),
            children: <Widget>[
              Image.network("https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/570778e50001a2a806000338-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/5b9105800001288905400300-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/5a9e334d0001c8be05400300-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/580fff7a0001541206000338-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/570778e50001a2a806000338-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/5b9105800001288905400300-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/5a9e334d0001c8be05400300-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/580fff7a0001541206000338-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/570778e50001a2a806000338-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/5b9105800001288905400300-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/5a9e334d0001c8be05400300-240-135.jpg",fit: BoxFit.cover,),
              Image.network("https://img.mukewang.com/580fff7a0001541206000338-240-135.jpg",fit: BoxFit.cover,),

            ],
          ),
        )
    );
  }
}



