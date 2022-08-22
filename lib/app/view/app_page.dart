import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './app_view.dart';

/// {@template app_page}
/// A description for AppPage
/// {@endtemplate}
class AppPage extends StatelessWidget {
  /// {@macro app_page}
  const AppPage({super.key, required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  /// The static route for AppPage
  /// Can be directly accessed using
  /// code dart`
  /// Navigator.push(AppPage.route());
  /// `
  static Route<AppPage> route({required SharedPreferences sharedPreferences}) {
    return MaterialPageRoute<AppPage>(
      builder: (_) => AppPage(sharedPreferences: sharedPreferences),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (BuildContext context) => AppBloc(
        connectivityPlugin: Connectivity(),
        sharedPreferences: sharedPreferences,
      )
        ..add(const AppRestoreSettings())
        ..add(const AppInitial()),
      child: const AppView(),
    );
  }
}
