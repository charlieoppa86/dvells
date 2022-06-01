import 'package:dvells/theme/color.dart';
import 'package:flutter/material.dart';

var theme = ThemeData(
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 1,
        centerTitle: false,
        actionsIconTheme: IconThemeData(color: darkHeaderClr)),
    textTheme: TextTheme(
        bodyText1: TextStyle(color: darkHeaderClr),
        bodyText2: TextStyle(color: darkGreyClr)));
