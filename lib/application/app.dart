import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/screens/home_page.dart';
import 'package:lanai/application/theme/style.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kReleaseMode ? false : true,
      themeMode: ThemeMode.light,
      theme: MyTheme.light,
      home: const HomePage(),
    );
  }
}
