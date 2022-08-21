import 'package:flutter/material.dart';
import 'package:lanai/settings/settings.dart';

class SwitchSourceButton extends StatelessWidget {
  const SwitchSourceButton({super.key});

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<SettingsBloc>().state.settings.source;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Source'),
                Text('Select a source to browse images from.'),
              ],
            ),
          ),
          const SizedBox.square(
            dimension: 20.0,
          ),
          DropdownButton<String>(
            value: selected,
            items: const [
              DropdownMenuItem(
                value: 'Pexels',
                child: Text('Pexels'),
              ),
              DropdownMenuItem(
                value: 'Pixabay',
                child: Text('Pixabay'),
              ),
            ],
            onChanged: (String? val) {
              switch (val) {
                case 'Pexels':
                  context.read<SettingsBloc>().add(SourceChanged(src: val!));
                  break;
                case 'Pixabay':
                  context.read<SettingsBloc>().add(SourceChanged(src: val!));
                  break;
              }
            },
          ),
        ],
      ),
    );
  }
}
