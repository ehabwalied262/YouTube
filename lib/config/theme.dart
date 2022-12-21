import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData theme() {
  return ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Palette.kPrimaryColor,
        unselectedItemColor: Palette.kTextColor,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
        ),
        unselectedLabelStyle:
            TextStyle(fontSize: 12, color: Palette.kTextColor),
      ),
      appBarTheme: const AppBarTheme(backgroundColor: Palette.kBlackColor),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith(
            (states) => Palette.kPrimaryColor.withOpacity(0.8)),
      ),
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Palette.kPrimaryColor),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Palette.kPrimaryColor,
      scaffoldBackgroundColor: Palette.kBlackColor,
      fontFamily: 'jarble',
      textTheme: textTheme());
}

TextTheme textTheme() {
  return TextTheme(
      headline1: TextStyle(
        color: Palette.kTextColor.withOpacity(0.8),
        fontSize: 32,
      ),
      headline2: TextStyle(
          color: Palette.kTextColor.withOpacity(0.8),
          fontSize: 24,
          fontWeight: FontWeight.w500),
      headline3: TextStyle(
        color: Palette.kTextColor.withOpacity(0.8),
        fontSize: 18,
      ),
      headline4: TextStyle(
        color: Palette.kTextColor.withOpacity(0.8),
        fontSize: 16,
      ),
      headline5: TextStyle(
        color: Palette.kTextColor.withOpacity(0.8),
        fontSize: 14,
      ),
      headline6: TextStyle(
          color: Palette.kTextColor.withOpacity(0.8),
          fontSize: 12,
          fontWeight: FontWeight.normal),
      bodyText1: TextStyle(
          color: Palette.kBackgroundColor.withOpacity(0.8),
          fontSize: 12,
          fontWeight: FontWeight.normal),
      bodyText2: TextStyle(
          color: Palette.kBackgroundColor.withOpacity(0.8),
          fontSize: 10,
          fontWeight: FontWeight.normal));
}
