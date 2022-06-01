import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CommPage extends StatefulWidget {
  CommPage({Key? key}) : super(key: key);

  @override
  State<CommPage> createState() => _CommPageState();
}

class _CommPageState extends State<CommPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('커뮤니티'),
    );
  }
}
