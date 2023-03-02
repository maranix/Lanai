import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:lanai/l10n/l10n.dart';

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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
