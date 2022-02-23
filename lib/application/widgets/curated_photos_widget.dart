import 'package:flutter/material.dart';
import 'package:lanai/application/screens/preview_page.dart';

class CuratedPhotosWidget extends StatelessWidget {
  const CuratedPhotosWidget({Key? key, this.photo}) : super(key: key);

  final dynamic photo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PreviewPage(data: photo),
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            image: NetworkImage(photo.src.portrait),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
