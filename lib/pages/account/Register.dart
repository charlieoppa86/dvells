import 'package:dvells/pages/main/Home.dart';

import 'package:flutter/material.dart';
import '../../theme/color.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final allChecked = CheckBoxModal(title: '전체 동의');
  final checkBoxList = [
    CheckBoxModal(title: '서비스 이용약관 동의 (필수)'),
    CheckBoxModal(title: '개인정보 처리방침 동의 (필수)'),
    CheckBoxModal(title: '지니어스 소식과 혜택 안내 (선택)'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              '회원가입',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: TextField(
                    decoration: InputDecoration(labelText: "이메일"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: TextField(
                    decoration: InputDecoration(labelText: "이름"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "비밀번호"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 40),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "비밀번호 확인"),
                  ),
                ),
                ListTile(
                  onTap: () => onAllClicked(allChecked),
                  leading: Checkbox(
                      value: allChecked.value,
                      onChanged: (value) => onAllClicked(allChecked)),
                  title: Text(
                    allChecked.title,
                  ),
                ),
                Divider(),
                ...checkBoxList.map((item) => ListTile(
                      onTap: () => onItemClicked(item),
                      leading: Checkbox(
                          value: item.value,
                          onChanged: (value) => onItemClicked(item)),
                      title: Text(
                        item.title,
                      ),
                    )),
                Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(bluishClr)),
                        child: Text(
                          '회원가입',
                        ))),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  onAllClicked(CheckBoxModal ckbItem) {
    final newValue = !ckbItem.value;

    setState(() {
      ckbItem.value = newValue;
      checkBoxList.forEach((element) {
        element.value = newValue;
      });
    });
  }

  onItemClicked(CheckBoxModal ckbItem) {
    final newValue = !ckbItem.value;

    setState(() {
      ckbItem.value = newValue;

      if (!newValue) {
        allChecked.value = false;
      } else {
        final allListChecked = checkBoxList.every((element) => element.value);
        allChecked.value = allListChecked;
      }
    });
  }
}

class CheckBoxModal {
  String title;
  bool value;

  CheckBoxModal({required this.title, this.value = false});
}
