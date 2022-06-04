import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotiPage extends StatefulWidget {
  NotiPage({Key? key}) : super(key: key);

  @override
  State<NotiPage> createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
        child: Text(
          '알림',
          style: TextStyle(
              fontSize: 26, letterSpacing: -2, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
