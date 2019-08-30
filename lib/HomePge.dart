import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'package:flutter_app/HttpUtils.dart';
import 'package:flutter_app/entities/HomeMenus.dart';
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new Page();
  }
}

// GET 请求
// 返回的结果直接就是 json 格式
// 要使用 await，必须在方法名后面加上 async
_handleGetShelf () async {
  var result = await HttpUtils.request(
      '/calc',
      method: HttpUtils.GET,
  );
  print(result);
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
          itemBuilder:(context,index)=> _swiperBuilder(context,index),
          itemCount: swipterlist(context).length,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white,
                size: 8.0,
                activeSize: 8,

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
  List<Widget> swipterlist(BuildContext context){
    List<Widget> w = new List();
    w.add(myImage("http://pic25.nipic.com/20121112/9252150_150552938000_2.jpg"));
    w.add(myImage("http://pic16.nipic.com/20111006/6239936_092702973000_2.jpg"));
    w.add(myImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567179064933&di=c79c1b5e153c23facc616aa27ee18f92&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F908fa0ec08fa513db777cf78376d55fbb3fbd9b3.jpg"));
    return w ;
  }

  Widget _swiperBuilder(BuildContext context,int index) {
    List<Widget> s = swipterlist(context);
    return s[index];
  }
  Widget buildAppBar(BuildContext context){
    return new AppBar(title: const Text('首页'),centerTitle: true,);
  }
  Image myImage(String src){
    return new Image.network(src,fit: BoxFit.fill,);
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
    widlist.add(buildItem(context,HomeMenus("锁屏", "image/suoping.png","")));
    widlist.add(buildItem(context,HomeMenus("解锁", "image/cancet.png","")));
    widlist.add(buildItem(context,HomeMenus("60S关机", "image/shutdow.png","")));
    return widlist;
}
  List<Widget> gridViewList2(BuildContext context){
    List<Widget> widlist = new List();
    widlist.add(buildItem(context,HomeMenus("取消关机","image/canceo.png","")));
    widlist.add(buildItem(context,HomeMenus("打开QQ", "image/qqo.png","")));
    widlist.add(buildItem(context,HomeMenus("关闭QQ", "image/qqc.png","")));
    return widlist;
  }
  List<Widget> gridViewList3(BuildContext context){
    List<Widget> widlist = new List();
    widlist.add(buildItem(context,new HomeMenus('计算器', 'image/jisuanqi.png', 'jisuanqi')));
    widlist.add(buildItem(context,HomeMenus('打开微信', 'image/wechat.png', 'jisuanqi')));
    widlist.add(buildItem(context,new HomeMenus('关闭微信', 'image/wechatt.png', 'jisuanqi')));
    return widlist;
  }




  Widget buildItem(BuildContext context,HomeMenus homeMenus){

    return
      Expanded(
        flex: 1,
        child:new GestureDetector(
          onTap: (){
            _handleGetShelf();
            Fluttertoast.showToast(
                msg: homeMenus.title,
                gravity: ToastGravity.BOTTOM
            );
          },
          child:
          Container(
            padding: EdgeInsets.only(top: 15.0),
            child:new Column(
              children: <Widget>[
                getImage(homeMenus.src),
                getText(homeMenus.title)
              ],
            ),
          )

        ) ,
      )
      ;
  }

}