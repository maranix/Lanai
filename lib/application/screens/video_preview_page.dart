import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:lanai/domain/models/video_model.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewPage extends StatefulWidget {
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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Chewie(controller: _chewieController),
          ),
        ],
      ),
    );
  }
}
