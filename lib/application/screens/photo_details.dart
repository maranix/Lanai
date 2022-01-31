import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/domain/models/photo_model.dart';

class PhotoDetails extends StatelessWidget {
  const PhotoDetails({Key? key, required this.data}) : super(key: key);

  final PhotoElement data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    data.src.original,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
