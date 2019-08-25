import 'package:flutter/material.dart';
class MinePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new Page();
  }
}

class Page extends State<MinePage>{
  @override
  Widget build(BuildContext context){
    return layout(context);
  }
  Widget layout(BuildContext context){
    return new Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: new Text("我的"),
      ),
    );
  }
  Widget buildAppBar(BuildContext context){
    return new AppBar(title: const Text('我的'),centerTitle: true,);
  }
  Image myImage(BuildContext context){
    return new Image.network('https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg');
  }
}