import 'package:dvells/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class NewStudy extends StatefulWidget {
  const NewStudy({super.key});

  @override
  State<NewStudy> createState() => _NewStudyState();
}

class _NewStudyState extends State<NewStudy> {
  late TextEditingController _controller;
  var userImage;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              '새 스터디',
              style: TextStyle(color: darkHeaderClr),
            ),
            elevation: 0,
            leading: IconButton(
              color: darkHeaderClr,
              icon: Icon(CupertinoIcons.back),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '20자 미만',
                    ),
                  ),
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '스터디 요약',
                    ),
                  ),
                  Text('대표 이미지'),
                  ElevatedButton(
                      onPressed: () async {
                        var picker = ImagePicker();
                        var image =
                            await picker.pickImage(source: ImageSource.gallery);

                        if (image != null) {
                          setState(() {
                            userImage = File(image.path);
                          });
                        }
                      },
                      child: Text('업로드')),
                  Text('스터디 상세 설명'),
                  Text('스터디 장소'),
                  Text('현재 스터디 인원'),
                  Text('스터디 리더'),
                  Text('리더 이미지'),
                  ElevatedButton(
                      onPressed: () async {
                        var picker = ImagePicker();
                        var image =
                            await picker.pickImage(source: ImageSource.gallery);

                        if (image != null) {
                          setState(() {
                            userImage = File(image.path);
                          });
                        }
                      },
                      child: Text('업로드')),
                  Text('스터디 연락처'),
                  ElevatedButton(onPressed: () {}, child: Text('등록'))
                ],
              ),
            ),
          ),
        ));
  }
}
