import 'package:flutter/material.dart';

List<LinearGradient> gradients = const [
  LinearGradient(colors: [Color(0xFFff1b6b), Color(0xFF45caff)]),
  LinearGradient(colors: [Color(0xFF40c9ff), Color(0xFFe81cff)]),
  LinearGradient(colors: [Color(0xFF696eff), Color(0xFFf8acff)]),
  LinearGradient(
      colors: [Color(0xFF84ffc9), Color(0xFFaab2ff), Color(0xFFeca0ff)]),
  LinearGradient(
    colors: [Color(0xFFb2ef91), Color(0xFFfa9372)],
  )
];

class Style {
  static const textStyleHeading = TextStyle(
    color: Color(0xFF000000),
    fontSize: 60,
    fontWeight: FontWeight.bold,
    fontFamily: 'Caveat',
  );

  static const textStyleDetails = TextStyle(
    color: Color(0xFF000000),
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const textStyleDrawer = TextStyle(
    color: Color(0xFF000000),
    fontSize: 25,
  );

  static const textStyleLegalPage = TextStyle(
    color: Color(0xFF000000),
    fontSize: 20,
  );

  static const textStyleAboutPage = TextStyle(
    color: Color(0xFF000000),
    fontSize: 20,
  );
}
