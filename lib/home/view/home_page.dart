import 'package:flutter/material.dart';
import 'package:lanai/home/home.dart';
import './home_view.dart';

/// {@template home_page}
/// A description for HomePage
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  /// The static route for HomePage
  /// Can be directly accessed using
  /// code dart`
  /// Navigator.push(HomePage.route());
  /// `
  static Route<HomePage> route() {
    return MaterialPageRoute<HomePage>(
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (BuildContext context) => HomeBloc(),
      child: const HomeView(),
    );
  }
}
