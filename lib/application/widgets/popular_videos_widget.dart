import 'package:flutter/material.dart';

class PopularVideosWidget extends StatelessWidget {
  const PopularVideosWidget({Key? key, required this.video}) : super(key: key);

  final dynamic video;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        image: DecorationImage(
          image: NetworkImage(video.image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
