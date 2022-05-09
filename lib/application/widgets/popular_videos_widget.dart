import 'package:flutter/material.dart';
import 'package:lanai/application/screens/video_preview_page.dart';

class PopularVideosWidget extends StatelessWidget {
  const PopularVideosWidget({Key? key, required this.video}) : super(key: key);

  final dynamic video;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPreviewPage(video: video),
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            image: NetworkImage(video.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
