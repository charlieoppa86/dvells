import 'package:dvells/pages/main/Admin.dart';
import 'package:dvells/pages/main/Storage.dart';
import 'package:dvells/pages/main/Noti.dart';
import 'package:dvells/pages/main/Home.dart';
import 'package:dvells/theme/color.dart';
import 'package:dvells/theme/style.dart' as style;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:provider/provider.dart';

void main() {
  // KakaoSdk.init(nativeAppKey: );

  runApp(
    const MyApp(),
  );
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
    StoragePage(),
    NotiPage(),
    MyPage(),
  ];

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: style.theme,
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: Text(
            'STUDY TOWN',
            style: TextStyle(
                color: darkHeaderClr,
                letterSpacing: -2,
                fontSize: 26,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
            IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.slider_horizontal_3)),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: bgImgClr,
              ),
            )
          ],
        ),
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedFontSize: 13,
            unselectedFontSize: 13,
            selectedItemColor: bluishClr,
            unselectedItemColor: darkGreyClr.withOpacity(0.5),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.square_grid_2x2), label: '스터디'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.rectangle_stack), label: '보관함'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.bell), label: '알림'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person_circle), label: '내 정보'),
            ]),
      ),
    );
  }
}
