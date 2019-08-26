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
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 2.0,

      ),
      children: gridViewList(context,7),
      ),
    );
  }
  Widget buildAppBar(BuildContext context){
    return new AppBar(title: const Text('首页'),centerTitle: true,);
  }
  Image myImage(BuildContext context){
    return new Image.network('https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg');
  }
  Image getImage(src){
    return new Image.asset(src,width: 50.0,height: 50.0,);
  }
  Padding getText(title){
    return new Padding(
        padding: const EdgeInsets.only(top: 5),
        child: new Text(title,style: new TextStyle(fontSize: 18.0,))
    );

  }
List<Widget> gridViewList(BuildContext context,int index){
    List<Widget> widlist = new List();
    for(int i=0;i<index;i++){
      widlist.add(buildItem(context,i));
    }
    return widlist;
}
  Widget buildItem(BuildContext context,int index,){
    //设置字体样式
    TextStyle textStyle = new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0);
    return new GestureDetector(
          onTap: (){

          },
          child: new Column(
            children: <Widget>[
              getImage("image/qqo.png"),
              getText("QQ")
            ],
          ),
    );
  }

}