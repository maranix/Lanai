import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';

class SourceDropDownMenu extends StatelessWidget {
  const SourceDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final source = context.watch<AppBloc>().state.settings.source;
    /* final source = context.select((AppBloc bloc) => bloc.state.settings.source); */

    return Row(
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
          value: source.name,
          items: [
            DropdownMenuItem(
              value: 'pexels',
              onTap: () => context
                  .read<AppBloc>()
                  .add(const AppSourceChanged(src: ImageSource.pexels)),
              child: const Text('Pexels'),
            ),
            DropdownMenuItem(
              value: 'pixabay',
              onTap: () => context
                  .read<AppBloc>()
                  .add(const AppSourceChanged(src: ImageSource.pixabay)),
              child: const Text('Pixabay'),
            ),
          ],
          onChanged: (String? val) {},
        ),
      ],
    );
  }
}
