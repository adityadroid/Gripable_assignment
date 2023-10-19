import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _baseTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: false,
    backgroundColor: Colors.white,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.black,
    unselectedLabelColor: Color(0x99000000),
    indicator: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xFF4E4CEC),
          width: 2,
        ),
      ),
    ),
    labelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: Colors.white,
  ),
);
final appTheme = _baseTheme.copyWith(
  textTheme: GoogleFonts.latoTextTheme(
    _baseTheme.textTheme,
  ),
);
