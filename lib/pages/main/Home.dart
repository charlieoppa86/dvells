import 'package:dio/dio.dart';
import 'package:dvells/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class StudyService extends ChangeNotifier {
  List<String> studyImage = [];
}

// 홈페이지

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Consumer<StudyService>(builder: (context, studyService, child) {
      return Scaffold(
          body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
                child: Container(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '당신의 성장을 도울',
                          style: TextStyle(
                              fontSize: 26,
                              letterSpacing: -2,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '우리 동네 스터디',
                          style: TextStyle(
                              fontSize: 26,
                              letterSpacing: -2,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
              )
            ],
          ),
          Container(
              child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                controller: _tabController,
                labelColor: darkHeaderClr,
                unselectedLabelColor: darkHeaderClr.withOpacity(0.6),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: bluishClr,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: '오프라인',
                  ),
                  Tab(
                    text: '온라인',
                  ),
                ]),
          )),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                        itemCount: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/study1.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 260,
                                    child: Row(
                                      children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Team Booku',
                                                style: TextStyle(
                                                    letterSpacing: -1,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '매주 1권, 한달 4권 독서 토론 클럽',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      letterSpacing: -1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    CupertinoIcons.location,
                                                    size: 16,
                                                  ),
                                                  Text(
                                                    '성수동',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      letterSpacing: -1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 250,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          CupertinoIcons.heart,
                                                          size: 14,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          '282',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          CupertinoIcons
                                                              .person_2,
                                                          size: 14,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          '81',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          CupertinoIcons
                                                              .chat_bubble,
                                                          size: 14,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          '62',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ]),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                    Text('온'),
                  ],
                )),
          )
        ],
      ));
    });
  }
}
