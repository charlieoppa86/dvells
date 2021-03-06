import 'package:dvells/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyPage extends StatefulWidget {
  MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '내 계정',
                  style: TextStyle(
                      fontSize: 26,
                      letterSpacing: -2,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.person,
                      color: darkHeaderClr,
                      size: 24,
                    ),
                    Container(
                      width: 10,
                    ),
                    Text(
                      '계정 관리',
                      style: TextStyle(
                        color: darkHeaderClr,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 1,
                  decoration: BoxDecoration(color: textClr.withOpacity(0.1)),
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.heart,
                      color: darkHeaderClr,
                      size: 24,
                    ),
                    Container(
                      width: 10,
                    ),
                    Text(
                      '즐겨찾기',
                      style: TextStyle(
                        color: darkHeaderClr,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 1,
                  decoration: BoxDecoration(color: textClr.withOpacity(0.1)),
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.person_add,
                      color: darkHeaderClr,
                      size: 24,
                    ),
                    Container(
                      width: 10,
                    ),
                    Text(
                      '초대하기',
                      style: TextStyle(
                        color: darkHeaderClr,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 1,
                  decoration: BoxDecoration(color: textClr.withOpacity(0.1)),
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.question_circle,
                      color: darkHeaderClr,
                      size: 24,
                    ),
                    Container(
                      width: 10,
                    ),
                    Text(
                      '서비스 이용 안내',
                      style: TextStyle(
                        color: darkHeaderClr,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 1,
                  decoration: BoxDecoration(color: textClr.withOpacity(0.1)),
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.info_circle,
                      color: darkHeaderClr,
                      size: 24,
                    ),
                    Container(
                      width: 10,
                    ),
                    Text(
                      '공지사항',
                      style: TextStyle(
                        color: darkHeaderClr,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 1,
                  decoration: BoxDecoration(color: textClr.withOpacity(0.1)),
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.phone_circle,
                      color: darkHeaderClr,
                      size: 24,
                    ),
                    Container(
                      width: 10,
                    ),
                    Text(
                      '고객센터',
                      style: TextStyle(
                        color: darkHeaderClr,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 1,
                  decoration: BoxDecoration(color: textClr.withOpacity(0.1)),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                            title: Text('정말 로그아웃 하시겠습니까?'),
                            actions: [
                              CupertinoDialogAction(
                                child: Text('예'),
                                onPressed: () => Navigator.pop(context),
                              ),
                              CupertinoDialogAction(
                                child: Text(
                                  '아니오',
                                  style: TextStyle(color: Colors.red),
                                ),
                                onPressed: () => Navigator.pop(context),
                              )
                            ],
                          ));
                },
                child: Text('로그아웃',
                    style: TextStyle(fontSize: 15, color: Colors.red)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
