import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  runApp(AppPage(sharedPreferences: sharedPreferences));
}
