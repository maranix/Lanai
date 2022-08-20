import 'package:flutter/material.dart';
import 'package:lanai/features/theme/theme.dart';

class ToggleThemeButton extends StatefulWidget {
  const ToggleThemeButton({super.key});

  @override
  State<ToggleThemeButton> createState() => _ToggleThemeButtonState();
}

class _ToggleThemeButtonState extends State<ToggleThemeButton> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: isToggled,
      title: const Text('Dark Mode'),
      onChanged: (value) {
        setState(() {
          isToggled = value;
          context.read<ThemeBloc>().add(
                const ThemeToggled(),
              );
        });
      },
    );
  }
}
