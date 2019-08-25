import 'package:flutter/material.dart';
import 'package:flutter_app/FindPage.dart';
import 'package:flutter_app/MinePage.dart';
import 'package:flutter_app/HomePge.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,home:new MainPageWidget()
    );
  }
}
class MainPageWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget>{
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页','发现','我的'];

  var _pageList;
  Icon getTabIcon(int curIndex){
    if(curIndex == _tabIndex){
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }
  Text getTabTitle(int curIndex){
    if(curIndex == _tabIndex){
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(
            fontSize: 14.0,
            color: const Color(0xff1296db)
           ),);
    }else {
      return new Text(appBarTitles[curIndex],
        style: new TextStyle(
            fontSize: 14.0,
            color: const Color(0xff515151)
        ),);
    }
  }

  Image getTabImage(path){
    return new Image.asset(path,width: 24.0,height: 24.0,);
  }
  void initData(){
    tabImages = [
      [new Icon(Icons.home),new Icon(Icons.add_circle_outline)],
      [new Icon(Icons.mail),new Icon(Icons.mail_outline)],
      [new Icon(Icons.done),new Icon(Icons.done_outline)],

    ];
    _pageList = [
      new HomePage(),
      new FindPage(),
      new MinePage()
    ];
  }

  @override
  Widget build(BuildContext context){
    initData();
    return Scaffold(
      body: _pageList[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(icon: getTabIcon(0),
                title: getTabTitle(0)),
            new BottomNavigationBarItem(icon: getTabIcon(1),
                title: getTabTitle(1)),
            new BottomNavigationBarItem(icon: getTabIcon(2),
                title: getTabTitle(2)),
          ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        iconSize: 24.0,
        onTap: (index){
            setState(() {
              _tabIndex = index ;
            });
        },
      ),
    );
  }


}