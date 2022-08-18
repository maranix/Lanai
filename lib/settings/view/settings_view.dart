import 'package:flutter/material.dart';
import 'package:lanai/theme/theme.dart';

/// {@template settings_view}
/// Define your SettingsPage body/ui structure here.
/// {@endtemplate}
class SettingsView extends StatelessWidget {
  /// {@macro settings_view}
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    borderRadius: BorderRadius.circular(15),
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      size: 35,
                    ),
                  ),
                  const SizedBox.square(dimension: 20),
                  const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              const ToggleThemeButton(),
            ],
          ),
        ),
      ),
    );
  }
}

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