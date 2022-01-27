import 'package:flutter/material.dart';
import 'package:lanai/domain/services/photo_provider.dart';

class CategoriesPhotoGrid extends StatelessWidget {
  const CategoriesPhotoGrid({
    Key? key,
    required this.photosProvider,
  }) : super(key: key);

  final PhotoProvider photosProvider;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: photosProvider.photos.length,
      itemBuilder: (context, index) {
        return Image.network(
          photosProvider.photos[index].src.large,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
