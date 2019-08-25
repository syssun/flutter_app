import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new Page();
  }
}

class Page extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return layout(context);
  }
  Widget layout(BuildContext context){
    return new Scaffold(
      appBar: buildAppBar(context),
      body: new ListView(
        children: <Widget>[
          myImage(context),
          myImage(context),
          myImage(context),
          myImage(context),
          myImage(context),
        ],
      ),
    );
  }
  Widget buildAppBar(BuildContext context){
    return new AppBar(title: const Text('首页'),);
  }
  Image myImage(BuildContext context){
    return new Image.network('https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg');
  }
}