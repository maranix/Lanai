import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  runApp(
    const AppPage(),
  );
}
