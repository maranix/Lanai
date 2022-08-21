import 'package:flutter/material.dart';
import 'package:lanai/features/local_storage/local_storage.dart';
import 'package:lanai/settings/settings.dart';
import './settings_view.dart';

/// {@template settings_page}
/// A description for SettingsPage
/// {@endtemplate}
class SettingsPage extends StatelessWidget {
  /// {@macro settings_page}
  const SettingsPage({super.key});

  /// The static route for SettingsPage
  /// Can be directly accessed using
  /// code dart`
  /// Navigator.push(SettingsPage.route());
  /// `
  static Route<SettingsPage> route() {
    return MaterialPageRoute<SettingsPage>(
      builder: (_) => const SettingsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localStorageBloc = context.read<LocalStorageBloc>();

    return BlocProvider<SettingsBloc>(
      create: (BuildContext context) => SettingsBloc(
        settingsModel: localStorageBloc.state.settings,
        plugin: localStorageBloc.spInstance,
      )..add(const SettingsInitial()),
      child: const SettingsView(),
    );
  }
}
