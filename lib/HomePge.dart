import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
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
      body:
      ListView(
        padding: EdgeInsets.only(bottom: 30),
        children: <Widget>[
        Container(
      width: MediaQuery.of(context).size.width,
        height: 160.0,
        child: Swiper(
          itemBuilder: _swiperBuilder,
          itemCount: 3,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white,
              )),
          //control: new SwiperControl(),
          scrollDirection: Axis.horizontal,
          autoplay: true,
          onTap: (index) => print('点击了第$index个'),
        )
    ),
          Flex(
            direction: Axis.horizontal,
            children: gridViewList(context),
          ),
          Flex(
            direction: Axis.horizontal,
            children: gridViewList2(context),
          ),
          Flex(
            direction: Axis.horizontal,

            children: gridViewList3(context),
          ),

        ],
      )





    );
  }
  Widget _swiperBuilder(BuildContext context, int index) {
    return Image.network("https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg",fit: BoxFit.fill,);
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
    return widlist;
}
  List<Widget> gridViewList2(BuildContext context){
    List<Widget> widlist = new List();
    widlist.add(buildItem(context,{"title":"取消关机", "src":"image/canceo.png"}));
    widlist.add(buildItem(context,{"title":"打开QQ", "src":"image/qqo.png"}));
    widlist.add(buildItem(context,{"title":"关闭QQ", "src":"image/qqc.png"}));
    return widlist;
  }
  List<Widget> gridViewList3(BuildContext context){
    List<Widget> widlist = new List();
    widlist.add(buildItem(context,{"title":"计算器", "src":"image/jisuanqi.png"}));
    widlist.add(buildItem(context,{"title":"打开微信", "src":"image/wechat.png"}));
    widlist.add(buildItem(context,{"title":"其他", "src":"image/wechat.png"}));
    return widlist;
  }



  Widget buildItem(BuildContext context,Map map){
    //设置字体样式

    return
      Expanded(
        flex: 1,

        child:new GestureDetector(
          onTap: (){
          },
          child:
          Container(
            padding: EdgeInsets.only(top: 15.0),
            child:new Column(
              children: <Widget>[
                getImage(map["src"]),
                getText(map["title"])
              ],
            ),
          )

        ) ,
      )
      ;
  }

}