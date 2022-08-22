import 'package:flutter/material.dart';

/// {@template app_view}
/// Define your AppPage body/ui structure here.
/// {@endtemplate}
class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({super.key});

    @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Placeholder'),
      ),
    );
  }
}
