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
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
        childAspectRatio: 1.5,
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
        child: new Text(title,style: new TextStyle(fontSize: 16.0,))
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
    //TextStyle textStyle = new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0);
    return new InkWell(
          onTap: (){
            _neverSatisfied();
          },
          child: new Column(
            children: <Widget>[
              getImage("image/qqo.png"),
              getText("QQ")
            ],
          ),
    );
  }



  //dialog

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Rewind and remember'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You will never be satisfied.'),
                Text('You\’re like me. I’m never satisfied.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }





}