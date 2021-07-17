import 'package:flutter/material.dart';

import 'package:flutter_bottombar_test/sizeConfig.dart';

double mainTab = 150;

class TileData extends StatefulWidget {
  final String tileimage;
  final String tileTitle;
  // final String tileSubtitle;
  TileData({
    @required this.tileimage,
    @required this.tileTitle,
    // @required this.tileSubtitle,
  });
  @override
  _TileDataState createState() => _TileDataState();
}

class _TileDataState extends State<TileData> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.blockSizeVertical * 40,
      //width: mainTab - 20,
      child: new Card(
        color: Colors.grey[900],
        child: new Column(
          children: <Widget>[
            new Container(
                height: SizeConfig.blockSizeVertical * 20,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken),
                        image: AssetImage(
                          widget.tileimage,
                        )))),
            new Container(
              height: SizeConfig.blockSizeVertical * 8,
                
                child: ListTile(
                  title: Text(
                    widget.tileTitle,
                    style: new TextStyle(color: Colors.white),
                  ),
                  trailing: new Icon(
                    Icons.favorite_border,
                    color: Colors.purple,
                  ),
                )),
            new Container(
              height: SizeConfig.blockSizeVertical * 10,
              
              child:Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Icon(Icons.account_circle)),
                  label: const Text('Action'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Icon(Icons.add_a_photo)),
                  label: const Text('Date'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue.shade900),
                  label: const Text('Mulligan'),
                ),
              ],
            ))
            // new Container(
            //    height: SizeConfig.blockSizeVertical*5,
            //    color: Colors.grey[900],
            //    child:new IntrinsicHeight(child: Row(
            //      crossAxisAlignment: CrossAxisAlignment.stretch,
            //   children:<Widget>[
            //    // iconLabelStyle(),
            //   // iconLabelStyle('hello','');
            //   ],

            // ) ,)),
          ],

          // subtitle: Text(tileSubtitle),
        ),
      ),
    );
  }
}
