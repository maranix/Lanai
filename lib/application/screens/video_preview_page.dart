import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/utils/url_launcher.dart';
import 'package:lanai/domain/models/video_model.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewPage extends StatefulWidget with UrlMixin {
  const VideoPreviewPage({Key? key, required this.video}) : super(key: key);

  final VideoData video;

  @override
  State<VideoPreviewPage> createState() => _VideoPreviewPageState();
}

class _VideoPreviewPageState extends State<VideoPreviewPage> {
  late VideoPlayerController _videoPlayerController;

  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.network(widget.video.video_files.first.link);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Chewie(controller: _chewieController),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Original', style: TextStyle(fontSize: 20)),
                  GestureDetector(
                    onTap: () => widget.openUrl(widget.video.url),
                    child: const Text(
                      'Visit',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          color: Colors.blue,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Runtime', style: TextStyle(fontSize: 20)),
                  Text('${widget.video.duration} seconds',
                      style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Owner', style: TextStyle(fontSize: 20)),
                  Text(widget.video.user.name,
                      style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Files', style: TextStyle(fontSize: 20)),
                  Text('${widget.video.video_files.length}',
                      style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Resolution', style: TextStyle(fontSize: 20)),
                  Text('${widget.video.width}x${widget.video.height}',
                      style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text('Preview Images', style: TextStyle(fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          '${widget.video.video_pictures[index].picture}'),
                    ),
                  ),
                ),
                itemCount: widget.video.video_pictures.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
