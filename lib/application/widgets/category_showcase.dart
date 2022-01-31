import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/domain/models/photo_model.dart';

class CategoryShowCase extends StatelessWidget {
  const CategoryShowCase({Key? key, required this.photos}) : super(key: key);

  final List<PhotoElement> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(right: 15),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: CachedNetworkImageProvider(photos[index].src.large),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      itemCount: photos.length,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
