import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/domain/models/photo_model.dart';

class CategoriesPhotoGrid extends StatelessWidget {
  const CategoriesPhotoGrid({
    Key? key,
    required this.photos,
  }) : super(key: key);

  final List<PhotoElement> photos;

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
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return CachedNetworkImage(
          imageUrl: photos[index].src.large,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
