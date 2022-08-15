import 'package:flutter/material.dart';
import 'package:lanai/home/home.dart';

class LanaiApp extends StatelessWidget {
  const LanaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
