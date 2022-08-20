import 'package:flutter/material.dart';

class MyThemes {
  final ThemeData _lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    brightness: Brightness.light,
    textTheme: ThemeData.light().textTheme.apply(
          displayColor: Colors.black,
          fontFamily: 'Poppins',
        ),
  );

  final ThemeData _darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF000000),
    brightness: Brightness.dark,
    textTheme: ThemeData.dark().textTheme.apply(
          displayColor: Colors.white,
          fontFamily: 'Poppins',
        ),
  );

  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;
}
