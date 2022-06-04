import 'package:dvells/pages/main/Home.dart';
import 'package:dvells/pages/main/New.dart';
import 'package:dvells/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class StoragePage extends StatefulWidget {
  StoragePage({Key? key}) : super(key: key);

  @override
  State<StoragePage> createState() => _StorageState();
}

class _StorageState extends State<StoragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '클래스룸',
                    style: TextStyle(
                        fontSize: 26,
                        letterSpacing: -2,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return NewStudy();
                      }));
                    },
                    child: Container(
                      width: 110,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: bluishClr),
                      child: Center(
                        child: Text(
                          '새 스터디',
                          style: TextStyle(
                              color: bgClr,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('즐겨찾기',
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: -2,
                              fontWeight: FontWeight.bold)),
                      Text('스터디 관리',
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: -2,
                              fontWeight: FontWeight.bold)),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
