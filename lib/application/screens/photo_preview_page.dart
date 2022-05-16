import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/widgets/preview_page_fab.dart';

class PhotoPreviewPage extends StatefulWidget {
  const PhotoPreviewPage({Key? key, required this.data}) : super(key: key);

  final dynamic data;

  @override
  State<PhotoPreviewPage> createState() => _PhotoPreviewPageState();
}

class _PhotoPreviewPageState extends State<PhotoPreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_rounded,
          ),
          color: MediaQuery.of(context).size.width < 600
              ? Colors.white
              : Colors.black,
          splashRadius: 25,
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: ExtendedImage.network(
              widget.data.src.original,
              cache: true,
              fit: MediaQuery.of(context).size.width < 600
                  ? BoxFit.cover
                  : BoxFit.contain,
              clearMemoryCacheIfFailed: true,
              enableMemoryCache: true,
              mode: ExtendedImageMode.gesture,
              initGestureConfigHandler: (state) {
                return GestureConfig(
                  minScale: 1,
                  animationMinScale: 0.7,
                  maxScale: 3.0,
                  animationMaxScale: 3.5,
                  speed: 1.0,
                  inertialSpeed: 100.0,
                  initialScale: 1.0,
                  inPageView: false,
                  initialAlignment: InitialAlignment.center,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: PreviewFAB(data: widget.data),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
