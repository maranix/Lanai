import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanai/l10n/l10n.dart';
import 'package:lanai/src/theme/theme.dart';

class PhotosView extends StatelessWidget {
  const PhotosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: PaddingAll.x12y20,
              child: FittedBox(
                child: Text(
                  context.l10n.photosScreenTitle,
                  style: const TextStyle(
                    fontFamily: 'Playfair Display',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const NavigationContainer(
              text: 'Categories',
              color: Colors.pinkAccent,
            ),
            const NavigationContainer(
              text: 'Collections',
              color: Colors.indigoAccent,
            ),
            const NavigationContainer(
              text: 'Featured',
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ThemeBloc>().add(
              const ThemeToggled(),
            ),
        child: const Icon(Icons.brightness_7_outlined),
      ),
    );
  }
}

class NavigationContainer extends StatelessWidget {
  const NavigationContainer({
    required this.color,
    required this.text,
    this.onTap,
    super.key,
  });

  final Color color;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
        child: FittedBox(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: VerticalPadding.y4.copyWith(left: 4, right: 20),
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'Playfair Display',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
