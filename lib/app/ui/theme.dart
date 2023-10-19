import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gripable_assignment/app/ui/colors.dart';

final _baseTheme = ThemeData(
  useMaterial3: true,
  textTheme: GoogleFonts.latoTextTheme(),
  scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColor,
  appBarTheme: AppBarTheme(
    centerTitle: false,
    backgroundColor: ThemeColors.appBarBackgroundColor,
    elevation: 0,
    titleTextStyle: GoogleFonts.lato(
      fontSize: 16,
      color: ThemeColors.appBarTitleColor,
      fontWeight: FontWeight.w700,
    ),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: ThemeColors.selectedTabLabelColor,
    unselectedLabelColor: ThemeColors.unSelectedTabLabelColor,
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: ThemeColors.highlightAccentColor,
          width: 2,
        ),
      ),
    ),
    labelStyle: GoogleFonts.lato(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    unselectedLabelStyle: GoogleFonts.lato(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: ThemeColors.swatchAccentColor,
  ),
);
final appTheme = _baseTheme.copyWith(
  textTheme: GoogleFonts.latoTextTheme(
    _baseTheme.textTheme,
  ),
);
