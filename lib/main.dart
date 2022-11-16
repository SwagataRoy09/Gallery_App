import 'dart:math';

import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'COLORS.dart';

main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  List<Image> list = [
    Image.asset('asset/images/1.jpeg'),//0
    Image.asset('asset/images/2.jpeg'),//1
    Image.asset('asset/images/three.jpg'),
    Image.asset('asset/images/four.jpg'),
    Image.asset('asset/images/five.jpg'),
    Image.asset('asset/images/six.jpg'),
    Image.asset('asset/images/seven.jpg'),
    Image.asset('asset/images/eight.jpg'),
    Image.asset('asset/images/nine.jpg'),
    Image.asset('asset/images/ten.jpg'),
    Image.asset('asset/images/eleven.jpg'),
    Image.asset('asset/images/twelve.jpg'),
  ];
  Image getRandomElement<Image>(List<Image> list){
    final random = new Random(); var i = random.nextInt(list.length); return list[i];
  }
  int i =0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: COLORS().primary,
        shadowColor :COLORS().secondary,
        hoverColor: COLORS().reddish_brown,
        appBarTheme: AppBarTheme(
            color: COLORS().secondary, foregroundColor: COLORS().cream2),
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Gallerino',
                style: TextStyle(fontFamily: 'Chela_One', fontSize: 35)),
            leading: Icon(
              Icons.menu_open_rounded,
              color: COLORS().cream2,
            ),
          ),
          backgroundColor: COLORS().primary,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: COLORS().secondary,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GNav(
                  backgroundColor: COLORS().secondary,
                  rippleColor: COLORS().secondary,
                  hoverColor: COLORS().reddish_brown,
                  gap: 8,
                  activeColor: COLORS().brown1,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: COLORS().cream2,
                  color: COLORS().cream2,
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: LineIcons.heart,
                      text: 'Likes',
                    ),
                    GButton(
                      icon: LineIcons.search,
                      text: 'Search',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  // color:  COLORS().secondary,
                  child: list[0],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child: list[1],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child: list[2],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child:list[3],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child:list[4],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child:list[5],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child:list[6],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child:list[7],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child:list[8],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child:list[9],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child:list[10],
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:COLORS().secondary,),
                  child:list[11],
                  ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
// FullScreenWidget(
// child: ClipRRect(
// borderRadius: BorderRadius.circular(16),
// child: Image.asset(
// "assets/image1.jpg",
// fit: BoxFit.cover,
// ),
// ),
// )