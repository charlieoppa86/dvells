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
      body: Text('알림'),
    );
  }
}
