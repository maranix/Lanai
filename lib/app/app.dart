import 'package:flutter/material.dart';
import 'package:lanai/home/home.dart';
import 'package:lanai/theme/my_themes.dart';
import 'package:lanai/theme/theme.dart';

class LanaiApp extends StatelessWidget {
  const LanaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeBloc(
            theme: MyThemes(),
          ),
        ),
      ],
      child: const LanaiAppView(),
    );
  }
}

class LanaiAppView extends StatelessWidget {
  const LanaiAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) => MaterialApp(
        theme: state.theme,
        home: const HomePage(),
      ),
    );
  }
}
