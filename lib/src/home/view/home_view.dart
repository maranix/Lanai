import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: PaddingAll.x12y20,
              child: Text('Photos', style: TypographyStyle.bolderLarge),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.cyan,
              ),
              child: Padding(
                padding: PaddingAll.x12y20,
                child: Text('Categories', style: TypographyStyle.bolderMedium),
              ),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Padding(
                padding: PaddingAll.x12y20,
                child: Text('Collections', style: TypographyStyle.bolderMedium),
              ),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: Padding(
                padding: PaddingAll.x12y20,
                child: Text('Featured', style: TypographyStyle.bolderMedium),
              ),
            )
          ],
        ),
      ),
    );
  }
}
