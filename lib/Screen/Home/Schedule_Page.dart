import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Menu/Home.dart';
import 'package:schooling/Screen/Menu/Profile_Page.dart';

import '../Schedule_Page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
DateTime currentDate = DateTime.now();
class _HomeState extends State<Home> {




  int _index = 1;

  @override
  Widget build(BuildContext context) {
    Widget ?page;
    switch (_index) {
      case 0:
        page = profile();
        break;
      case 1:
        page = Schedule();

        break;
      case 2:
        page = MenuHome();
        break;
    }

    return Scaffold(
      backgroundColor: Colors.white,

      body: SizedBox.expand(child: page),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: MyColors.Text_Coloe_white,
unselectedItemColor: Colors.white38,
        backgroundColor: MyColors.Intro_Text_Color,
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "profile"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_sharp), label: "Schedule"),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert), label:"Menu"),
        ],
      ),
    );
  }
}
