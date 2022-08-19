import 'package:flutter/material.dart';
import 'package:lanai/liked/liked.dart';
import './liked_view.dart';

/// {@template liked_page}
/// A description for LikedPage
/// {@endtemplate}
class LikedPage extends StatelessWidget {
  /// {@macro liked_page}
  const LikedPage({super.key});

  /// The static route for LikedPage
  /// Can be directly accessed using
  /// code dart`
  /// Navigator.push(LikedPage.route());
  /// `
  static Route<LikedPage> route() {
    return MaterialPageRoute<LikedPage>(
      builder: (_) => const LikedPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LikedBloc>(
      create: (BuildContext context) => LikedBloc(),
      child: const LikedView(),
    );
  }
}
