import 'package:flutter/material.dart';

final lightPrimarySwatch = MaterialColor(0xFFFFFFFF, <int, Color>{
  50: Color(0xFFFFFFFF),
  100: Color(0xFFFFFFFF),
  200: Color(0xFFFFFFFF),
  300: Color(0xFFFFFFFF),
  400: Color(0xFFFFFFFF),
  500: Color(0xFFFFFFFF),
  600: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
  800: Color(0xFFFFFFFF),
  900: Color(0xFFFFFFFF),
});

final darkPrimarySwatch = MaterialColor(0xFF000000, <int, Color>{
  50: Color(0xFF000000),
  100: Color(0xFF000000),
  200: Color(0xFF000000),
  300: Color(0xFF000000),
  400: Color(0xFF000000),
  500: Color(0xFF000000),
  600: Color(0xFF000000),
  700: Color(0xFF000000),
  800: Color(0xFF000000),
  900: Color(0xFF000000),
});

/// 亮色主题
final LightTheme = ThemeData(
  primaryColor: Colors.white,
  primarySwatch: lightPrimarySwatch, // appbar 和 tabbar
  primaryColorLight: Colors.white,
  textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black, fontSize: 14)),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: lightPrimarySwatch,
  // 底部按钮
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedLabelStyle: TextStyle(color: Colors.black87, fontSize: 14),
    unselectedItemColor: Colors.black87,
    selectedItemColor: Colors.red,
    selectedLabelStyle: TextStyle(color: Colors.red, fontSize: 14),
  ),
);

/// 暗色主题
final DarkTheme = ThemeData(
  primaryColor: Colors.black38,
  primarySwatch: darkPrimarySwatch,
  primaryColorDark: Colors.black38,
  textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black, fontSize: 14)),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: darkPrimarySwatch,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black54,
    unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 14),
    unselectedItemColor: Colors.white,
    selectedItemColor: Colors.red,
    selectedLabelStyle: TextStyle(color: Colors.red, fontSize: 14),
  ),
);
