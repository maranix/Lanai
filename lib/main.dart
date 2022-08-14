import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:lanai/observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(
    const LanaiApp(),
  );
}
