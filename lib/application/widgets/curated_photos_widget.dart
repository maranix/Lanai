import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/screens/photo_preview_page.dart';

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
            builder: (context) => PhotoPreviewPage(data: photo),
          ),
        );
      },
      child: ExtendedImage.network(
        photo.src.portrait,
        width: 400,
        height: 400,
        fit: BoxFit.fill,
        cache: true,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}
