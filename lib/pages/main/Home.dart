import 'package:dvells/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class StudyService extends ChangeNotifier {
  List<String> studyImage = ['assets/study1.png'];
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<StudyService>(builder: (context, studyService, child) {
      return Scaffold(
        body: Text('홈페이지'),
      );
    });
  }
}

class FavoPage extends StatelessWidget {
  const FavoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<StudyService>(builder: (context, studyService, child) {
      return Scaffold(
        body: Text('favor'),
      );
    });
  }
}
