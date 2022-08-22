import 'package:flutter/material.dart';
import 'package:lanai/home/home.dart';

/// {@template home_view}
/// Define your HomePage body/ui structure here.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Placeholder'),
            ToggleThemeButton(),
          ],
        ),
      ),
    );
  }
}
