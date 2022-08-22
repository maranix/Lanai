import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';

import './app_view.dart';

/// {@template app_page}
/// A description for AppPage
/// {@endtemplate}
class AppPage extends StatelessWidget {
  /// {@macro app_page}
  const AppPage({super.key});

  /// The static route for AppPage
  /// Can be directly accessed using
  /// code dart`
  /// Navigator.push(AppPage.route());
  /// `
  static Route<AppPage> route() {
    return MaterialPageRoute<AppPage>(
      builder: (_) => const AppPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (BuildContext context) => AppBloc(),
      child: const AppView(),
    );
  }
}
