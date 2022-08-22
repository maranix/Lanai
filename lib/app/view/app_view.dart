import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:lanai/app/constants.dart';
import 'package:lanai/home/view/home_page.dart';

/// {@template app_view}
/// Define your AppPage body/ui structure here.
/// {@endtemplate}
class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.select((AppBloc bloc) => bloc.state.settings.theme);

    return MaterialApp(
      theme: theme == ThemeType.light ? ThemeData.light() : ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
