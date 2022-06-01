import 'package:flutter/material.dart';

const Color bluishClr = Color(0xFF055CF5);
const Color yelloishClr = Color(0xFFFFB746);
const Color mainClr = Color(0xFF1A1C1E);
const Color textClr = Color(0xFF7A7A7A);
const Color bgClr = Color(0xFFFFFFFF);
const Color bgImgClr = Color(0xFFE9E9E9);
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
      backgroundColor: Colors.white,
      primaryColor: primaryClr,
      brightness: Brightness.light);

  static final dark = ThemeData(
      backgroundColor: darkGreyClr,
      primaryColor: darkGreyClr,
      brightness: Brightness.dark);
}
