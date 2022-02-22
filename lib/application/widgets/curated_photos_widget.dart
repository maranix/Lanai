import 'package:flutter/material.dart';

class CuratedPhotosWidget extends StatelessWidget {
  const CuratedPhotosWidget({Key? key, this.photo}) : super(key: key);

  final dynamic photo;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        image: DecorationImage(
          image: NetworkImage(photo.src.portrait),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
