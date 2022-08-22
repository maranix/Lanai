import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:lanai/app/constants.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<AppBloc>().state.themeMode;
    return IconButton(
      onPressed: () => context.read<AppBloc>().add(const AppThemeChanged()),
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeInOut,
        child:
            theme == ThemeType.light ? const Icon(Icons.brightness_2_rounded) : const Icon(Icons.brightness_1_rounded),
      ),
    );
  }
}
