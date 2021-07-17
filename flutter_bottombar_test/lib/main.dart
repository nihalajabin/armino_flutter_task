import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bottombar_test/reusable_slider.dart';

import 'package:flutter_bottombar_test/titleStyle.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  final List imagesList = [
    'assets/images/farcry6.jfif',
    'assets/images/ridersrepublic.jfif'
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      title: 'John',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: new CircleAvatar(
              backgroundImage: new AssetImage('assets/images/farcry6.jfif')),
          title: Text(
            'John',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.purple,
            ),
            Icon(
              Icons.add_alert,
              color: Colors.purple,
            ),
          ],
        ),
        body: ListView(
          children: [
            Divider(
              color: Colors.purple,
            ),
            titleStyle(title:"Popular"),
            CarouselSlider(
                options: CarouselOptions(
                  // height: 180.0,
                  //enlargeCenterPage: true,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,

                  viewportFraction: 0.8,
                ),
                items: imagesList
                    .map(
                      (item) => Center(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                    .toList()),
            Divider(
              color: Colors.purple,
            ),
            titleStyle(title: "Today"),
            TileData(
              tileimage: 'assets/images/farcry6.jfif',
              tileTitle: "Far Cry6",
            ),
            TileData(
              tileimage: 'assets/images/ridersrepublic.jfif',
              tileTitle: "Riders Republic",
            ),
            titleStyle(title: "This Week"),
            TileData(
              tileimage: 'assets/images/farcry6.jfif',
              tileTitle: "Far Cry6",
            ),
            TileData(
              tileimage: 'assets/images/ridersrepublic.jfif',
              tileTitle: "Riders Republic",
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.black,
          fixedColor: Colors.purple,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                title: Text(
                  'Home',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                title: Text(
                  'Search',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_travel,
                  color: Colors.grey,
                ),
                title: Text(
                  "Cart",
                )),
          ],
        ),
      ),
    );
  }
}
