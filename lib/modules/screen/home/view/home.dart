import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:todo/modules/screen/home/tabpage/calander/view/calender.dart';
import 'package:todo/modules/screen/home/tabpage/homemain/view/view.dart';
import 'package:todo/modules/screen/home/tabpage/list/list/list.dart';
import 'package:todo/modules/screen/home/tabpage/settings/view/settings.dart';

import '../controoler/changeindex.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var c1 = Get.put(ChangeIndexController());
  PageController pageController = PageController();

  List<Widget> pageList = [
    HomeMain(),
    Task(),
    Calender(),
    Settings(),
  ];

  int cindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: cindex,
        onTap: (i) {
          setState(() {
            cindex = i;
          });
        },
        backgroundColor: Color(0xff05243E),
        selectedItemColor: Color(0xff0EA5E9),
        unselectedItemColor: Colors.white,
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.list),
            title: Text("Task"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.calendar_month),
            title: Text("calendar"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.settings),
            title: Text("settings"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xff1253AA),
                    Color(0xff05243E),
                  ],
                  stops: [
                    0.3,
                    0.9
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  tileMode: TileMode.repeated),
            ),
          ),
          PageView(
            onPageChanged: (val) {
              c1.changePageIndex.index = val;
            },
            controller: pageController,
            children: pageList,
          ),
        ],
      ),
    );
  }
}
