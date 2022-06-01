import 'package:dvells/pages/main/Admin.dart';
import 'package:dvells/pages/main/Comm.dart';
import 'package:dvells/pages/main/Home.dart';
import 'package:dvells/pages/main/Noti.dart';
import 'package:dvells/theme/color.dart';
import 'package:dvells/theme/style.dart' as style;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => StudyService()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  List pages = [
    HomePage(),
    CommPage(),
    NotiPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: style.theme,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'LEAPERS',
              style: TextStyle(
                  color: darkHeaderClr, letterSpacing: -1, fontSize: 22),
            ),
            actions: [
              Icon(CupertinoIcons.search),
              CircleAvatar(
                backgroundColor: bgImgClr,
              )
            ],
          ),
          body: pages[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              selectedFontSize: 14,
              unselectedFontSize: 14,
              selectedItemColor: bluishClr,
              unselectedItemColor: darkGreyClr.withOpacity(0.5),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.square_grid_2x2), label: '스터디'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.chat_bubble_2), label: '커뮤니티'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.bell), label: '알림'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person_circle), label: '마이페이지'),
              ]),
        ));
  }
}
