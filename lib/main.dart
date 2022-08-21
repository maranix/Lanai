import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:lanai/observer.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  Bloc.observer = MyBlocObserver();

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  runApp(
    LanaiApp(
      sharedPreferences: sharedPreferences,
    ),
  );
}
