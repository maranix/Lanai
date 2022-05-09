import 'package:flutter/cupertino.dart';
import 'package:lanai/application/screens/photo_preview_page.dart';
import 'package:lanai/application/screens/video_preview_page.dart';

mixin SeeAllMixIn {
  String getPreviewImageUrl(state) {
    switch (state.runtimeType.toString()) {
      case r'_$PhotoData':
        return state.src.portrait;
      case r'_$VideoData':
        return state.image;
      default:
        return '';
    }
  }

  Widget getPreviewWidget(state) {
    switch (state.runtimeType.toString()) {
      case r'_$PhotoData':
        return PhotoPreviewPage(data: state);
      case r'_$VideoData':
        return VideoPreviewPage(video: state);
      default:
        return const SizedBox.shrink();
    }
  }
}
