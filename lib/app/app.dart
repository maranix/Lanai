import 'package:flutter/material.dart';
import 'package:lanai/home/home.dart';

class LanaiApp extends StatelessWidget {
  const LanaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}
