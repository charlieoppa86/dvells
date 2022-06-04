import 'package:dvells/pages/account/main_view_model.dart';
import 'package:dvells/pages/account/Kakao.dart';
import 'package:dvells/pages/account/register.dart';
import 'package:dvells/pages/main/Home.dart';

import 'package:flutter/material.dart';

import '../../theme/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final viewModel = MainViewModel(KakaoLogin());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.network(
                      viewModel.user?.kakaoAccount?.profile?.profileImageUrl ??
                          ''),
                ),
                Text('${viewModel.isLogined}'),
                ElevatedButton(
                    onPressed: () async {
                      await viewModel.login();
                      setState(() {});
                    },
                    child: const Text('카카오 로그인')),
                ElevatedButton(
                    onPressed: () async {
                      await viewModel.logout();
                      setState(() {});
                    },
                    child: const Text('카카오 로그아웃')),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextField(
                    decoration: InputDecoration(labelText: "이메일"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 30),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "비밀번호"),
                  ),
                ),
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
                        child: Text('로그인',
                            style: TextStyle(
                              fontSize: 16,
                            )))),
                Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 15),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(yelloishClr)),
                        child: Text('회원가입',
                            style: TextStyle(
                              fontSize: 16,
                            )))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
