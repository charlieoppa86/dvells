import 'package:dvells/pages/main/Detail.dart';
import 'package:dvells/pages/model/data_utils.dart';
import 'package:dvells/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<Map<String, String>> studyList = [];

  @override
  void initState() {
    super.initState();
    studyList = [
      {
        "id": "0",
        "cid": "0",
        "imgUrl": "assets/study1.png",
        "channel": "부캐부클이",
        "leader": "조승연",
        "category": "자기계발/독서",
        "desc": "매주 1권, 한달 4권 독서 토론 클럽",
        "price": "15000",
        "location": "성수동",
        "favorite": "282",
        "members": "81",
        "rating": "52",
      },
      {
        "id": "1",
        "cid": "1",
        "imgUrl": "assets/study2.png",
        "channel": "스마트스토어러스",
        "leader": "손오공",
        "category": "재테크/부업",
        "desc": "부업을 꿈꾸는 모두를 위해",
        "price": "10000",
        "location": "망원동",
        "favorite": "112",
        "members": "11",
        "rating": "5",
      },
      {
        "id": "2",
        "cid": "2",
        "imgUrl": "assets/study3.png",
        "channel": "팀 공인전문가",
        "leader": "김상식",
        "category": "자격증/시험",
        "desc": "공인자격증 따는 스터디",
        "price": "20000",
        "location": "이태원동",
        "favorite": "16",
        "members": "101",
        "rating": "81",
      },
      {
        "id": "3",
        "cid": "3",
        "imgUrl": "assets/study4.png",
        "channel": "1인개발새발",
        "category": "코딩/1인창업",
        "desc": "플러터로 앱만들어요!",
        "price": "25000",
        "location": "청담동",
        "favorite": "791",
        "members": "102",
        "rating": "299",
      },
      {
        "id": "4",
        "cid": "4",
        "imgUrl": "assets/study5.png",
        "channel": "초창패 모임",
        "leader": "이승건",
        "category": "스타트업/창업",
        "desc": "패기로 뭉친 초기창업가들",
        "price": "10000",
        "location": "역삼동",
        "favorite": "112",
        "members": "21",
        "rating": "101",
      },
      {
        "id": "5",
        "cid": "5",
        "imgUrl": "assets/study6.png",
        "channel": "나이트러너스",
        "leader": "이봉주",
        "category": "자기계발/건강",
        "desc": "밤마다 뛰댕기는 날다람쥐들",
        "price": "5000",
        "location": "반포동",
        "favorite": "92",
        "members": "56",
        "rating": "12",
      }
    ];
  }

  Widget _offlineStudy() {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (BuildContext _context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return DetailPage(studyData: studyList[index]);
              }));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: Hero(
                      tag: studyList[index]["cid"]!,
                      child: Image.asset(
                        studyList[index]["imgUrl"]!,
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 120,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              studyList[index]["channel"]!,
                              style: TextStyle(
                                  letterSpacing: -1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              studyList[index]["desc"]!,
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: -1,
                                  color: darkHeaderClr.withOpacity(0.7)),
                            ),
                            Text(
                                DataUtils.calcStringToWon(
                                    studyList[index]["price"]!),
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing: -1,
                                  color: darkHeaderClr,
                                )),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.location,
                                  size: 16,
                                ),
                                Text(
                                  studyList[index]["location"]!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                                      studyList[index]["favorite"]!,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.person_2,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      studyList[index]["members"]!,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.chat_bubble,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      studyList[index]["rating"]!,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext _context, int index) {
          return Container(
            height: 1,
            color: darkHeaderClr.withOpacity(0.1),
          );
        },
        itemCount: studyList.length);
  }

  Widget _onlineStudy() {
    return Center(
      child: Text(
        '온라인',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: Column(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 0, 15),
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '함께 성장하는 곳,',
                            style: TextStyle(
                                fontSize: 26,
                                letterSpacing: -2,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '여기는 스터디타운',
                            style: TextStyle(
                                fontSize: 26,
                                letterSpacing: -2,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Container(
              child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(40), color: bluishClr),
                labelPadding: EdgeInsets.symmetric(horizontal: 30),
                controller: _tabController,
                labelColor: Colors.white,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelColor: darkHeaderClr.withOpacity(0.6),
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
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: TabBarView(
              controller: _tabController,
              children: [_offlineStudy(), _onlineStudy()]),
        ),
      ]),
    );
  }
}
