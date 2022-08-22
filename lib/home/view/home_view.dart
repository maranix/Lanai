import 'package:flutter/material.dart';

/// {@template home_view}
/// Define your HomePage body/ui structure here.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

    @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Placeholder'),
      ),
    );
  }
}
