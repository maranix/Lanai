import 'package:flutter/material.dart';

class MoreVertButton extends StatelessWidget {
  const MoreVertButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (String selected) {
        switch (selected) {
          case 'Settings':
            break;
        }
      },
      elevation: 0,
      itemBuilder: (context) => [
        const PopupMenuItem<String>(
          value: 'Settings',
          child: Text('Settings'),
        ),
      ],
    );
  }
}
