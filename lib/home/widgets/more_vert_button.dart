import 'package:flutter/material.dart';
import 'package:lanai/settings/settings.dart';

class MoreVertButton extends StatelessWidget {
  const MoreVertButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (String selected) {
        switch (selected) {
          case 'Favourites':
            Navigator.push(
              context,
              SettingsPage.route(),
            );
            break;

          case 'Settings':
            Navigator.push(
              context,
              SettingsPage.route(),
            );
            break;
        }
      },
      elevation: 0,
      itemBuilder: (context) => [
        const PopupMenuItem<String>(
          value: 'Favourites',
          child: Text('Favourites'),
        ),
        const PopupMenuItem<String>(
          value: 'Settings',
          child: Text('Settings'),
        ),
      ],
    );
  }
}
