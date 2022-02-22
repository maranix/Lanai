import 'package:flutter/material.dart';
import 'package:lanai/application/widgets/curated_photos_widget.dart';
import 'package:lanai/application/widgets/featured_collection_widget.dart';
import 'package:lanai/application/widgets/popular_videos_widget.dart';
import 'package:lanai/domain/services/collections_notifier.dart';
import 'package:lanai/domain/services/photos_notifier.dart';
import 'package:lanai/domain/services/video_notifier.dart';

mixin SectionMixIn {
  String getSectionString(dynamic state) {
    switch (state.runtimeType) {
      case CollectionsNotifier:
        return "Featured Collections";
      case PhotoNotifier:
        return "Curated Photos";
      case VideosNotifier:
        return "Popular Videos";
      default:
        return "";
    }
  }

  Widget getGridWidget(dynamic state, int index) {
    switch (state.runtimeType.toString()) {
      case r'_$CollectionData':
        return FeaturedCollectionWidget(collection: state, index: index);
      case r'_$PhotoData':
        return CuratedPhotosWidget(photo: state);
      case r'_$VideoData':
        return PopularVideosWidget(video: state);
      default:
        return const SizedBox.shrink();
    }
  }
}
