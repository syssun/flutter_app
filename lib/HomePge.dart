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
      body: new Container(
        padding: new EdgeInsets.only(top: 20.0),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 1.4
        ),
          children: gridViewList(context),
        ),
      )


    );
  }
  Widget buildAppBar(BuildContext context){
    return new AppBar(title: const Text('首页'),centerTitle: true,);
  }
  Image myImage(BuildContext context){
    return new Image.network('https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg');
  }
  Image getImage(src){
    print(src);
    return new Image.asset(src,width: 50.0,height: 50.0,);
  }
  Padding getText(title){
    TextStyle textStyle = new TextStyle(fontWeight: FontWeight.normal, fontSize: 14.0);
    return new Padding(
        padding: const EdgeInsets.only(top: 10),
        child: new Text(title,style: textStyle)
    );

  }
List<Widget> gridViewList(BuildContext context){
    List<Widget> widlist = new List();
    widlist.add(buildItem(context,{"title":"锁屏", "src":"image/suoping.png"}));
    widlist.add(buildItem(context,{"title":"解锁", "src":"image/cancet.png"}));
    widlist.add(buildItem(context,{"title":"60S关机", "src":"image/shutdow.png"}));
    widlist.add(buildItem(context,{"title":"取消关机", "src":"image/canceo.png"}));
    widlist.add(buildItem(context,{"title":"打开QQ", "src":"image/qqo.png"}));
    widlist.add(buildItem(context,{"title":"关闭QQ", "src":"image/qqc.png"}));
    widlist.add(buildItem(context,{"title":"计算器", "src":"image/jisuanqi.png"}));
    widlist.add(buildItem(context,{"title":"打开微信", "src":"image/wechat.png"}));
    return widlist;
}
  Widget buildItem(BuildContext context,Map map){
    //设置字体样式

    return new GestureDetector(
          onTap: (){

          },
          child: new Column(
            children: <Widget>[
              getImage(map["src"]),
              getText(map["title"])
            ],
          ),
    );
  }

}