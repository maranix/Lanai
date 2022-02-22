import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/application/constants/constants.dart';
import 'package:lanai/application/widgets/app_bar.dart';
import 'package:lanai/application/widgets/section_widget.dart';
import 'package:lanai/data/repositories/collections_repository.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/data/repositories/videos_repository.dart';
import 'package:lanai/domain/services/collections_notifier.dart';
import 'package:lanai/domain/services/photos_notifier.dart';
import 'package:lanai/domain/services/video_notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoNotifier = PhotoNotifier(PhotosRepository(http.Client()));
    final videoNotifier = VideosNotifier(VideosRepository(http.Client()));
    final collectionsNotifier =
        CollectionsNotifier(CollectionsRepository(http.Client()));

    photoNotifier.curated();
    videoNotifier.popular();
    collectionsNotifier.featuredCollection();

    final _scrollController = ScrollController();

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          AppBarSliver(scrollController: _scrollController),
          SectionWidget(stateNotifier: collectionsNotifier),
          SectionWidget(stateNotifier: photoNotifier),
          SectionWidget(stateNotifier: videoNotifier),
          const SliverToBoxAdapter(child: Constants.gap20h)
        ],
      ),
    );
  }
}
