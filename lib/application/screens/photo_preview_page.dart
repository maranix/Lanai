import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/widgets/preview_page_fab.dart';

class PhotoPreviewPage extends StatelessWidget {
  const PhotoPreviewPage({Key? key, required this.data}) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ExtendedImage.network(
            data.src.original,
            cache: true,
            fit: BoxFit.cover,
            clearMemoryCacheIfFailed: true,
            enableMemoryCache: true,
          ),
        ],
      ),
      floatingActionButton: PreviewFAB(data: data),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
