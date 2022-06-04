import 'package:dvells/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var theme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 1,
        centerTitle: false,
        actionsIconTheme: IconThemeData(color: darkHeaderClr)),
    textTheme: GoogleFonts.getTextTheme("IBM Plex Sans KR"));
