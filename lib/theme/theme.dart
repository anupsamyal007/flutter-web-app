import 'package:flutter/material.dart';

// A ValueNotifier to hold the current ThemeMode
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  dividerColor: Color.fromARGB(255, 54, 54, 54),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white, // AppBar text and icons
  ),
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.blue),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: Colors.blue[400],
    textStyle: TextStyle(color: Colors.white),
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  ),
  drawerTheme: DrawerThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(0)),
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  dividerColor: Color.fromARGB(255, 54, 54, 54),
  scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 26),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 43, 43, 43),
    foregroundColor: Colors.white,
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Color.fromARGB(255, 43, 43, 43),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: Colors.grey[800],
    textStyle: const TextStyle(color: Colors.white),
    elevation: 4,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color.fromARGB(255, 43, 43, 43),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(0)),
    ),
  ),
);
