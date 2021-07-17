
import 'package:flutter/material.dart';
import 'package:flutter_bottombar_test/sizeConfig.dart';



class titleStyle extends StatefulWidget {
  final String title;

  const titleStyle({Key key, this.title}) : super(key: key);
  
  // final String tileSubtitle;
  
  @override
  titleStyleState createState() => titleStyleState();
}

class titleStyleState extends State<titleStyle> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color:Colors.black,
      child:new Padding(padding: const EdgeInsets.fromLTRB(10, 5, 5,5 ),child: new Text(widget.title,style:new TextStyle(color: Colors.purple,fontWeight: FontWeight.w500,fontSize: 20))),
    );
  }
}