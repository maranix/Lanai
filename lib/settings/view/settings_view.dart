import 'package:flutter/material.dart';

/// {@template settings_view}
/// Define your SettingsPage body/ui structure here.
/// {@endtemplate}
class SettingsView extends StatelessWidget {
  /// {@macro settings_view}
  const SettingsView({super.key});

    @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Placeholder'),
      ),
    );
  }
}
