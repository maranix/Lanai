import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  runApp(
    BlocProvider(
      lazy: false,
      create: (_) => AppBloc(
        connectivityPlugin: Connectivity(),
        sharedPreferences: sharedPreferences,
      )..add(const AppInitial()),
      child: const AppPage(),
    ),
  );
}
