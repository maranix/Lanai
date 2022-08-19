import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pexels_repository/pexels_repository.dart';

class PhotoPreview extends StatefulWidget {
  const PhotoPreview({super.key, required this.image});

  final PexelsPhoto image;

  static Route<PhotoPreview> route({required PexelsPhoto image}) {
    return MaterialPageRoute<PhotoPreview>(
      builder: (_) => PhotoPreview(image: image),
    );
  }

  @override
  State<PhotoPreview> createState() => _PhotoPreviewState();
}

class _PhotoPreviewState extends State<PhotoPreview> {
  bool isHidden = false;
  bool isLiked = false;

  void toggleIsHidden() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  void toggleLiked() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: toggleIsHidden,
              child: SizedBox.expand(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.image.src.large2x),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              child: isHidden
                  ? const SizedBox.shrink()
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back_rounded),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert_rounded),
                        ),
                      ],
                    ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              child: isHidden
                  ? const SizedBox.shrink()
                  : Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: double.infinity,
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 10,
                              sigmaY: 10,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Name:  ${widget.image.photographer}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: toggleLiked,
                                        icon: Icon(
                                          isLiked ? Icons.favorite_rounded : Icons.favorite_border_outlined,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
