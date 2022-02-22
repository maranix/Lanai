import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/application/widgets/app_bar.dart';
import 'package:lanai/data/repositories/collections_repository.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/data/repositories/videos_repository.dart';
import 'package:lanai/domain/models/collections_model.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:lanai/domain/models/video_model.dart';
import 'package:lanai/domain/services/collections_notifier.dart';
import 'package:lanai/domain/services/photos_notifier.dart';
import 'package:lanai/domain/services/video_notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoNotifier = PhotoNotifier(PhotosRepository(http.Client()));
    final collectionNotifier =
        CollectionsNotifier(CollectionsRepository(http.Client()));
    final videoNotifier = VideosNotifier(VideosRepository(http.Client()));
    photoNotifier.curated();
    collectionNotifier.featuredCollection();
    videoNotifier.popular();

    final _scrollController = ScrollController();

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          AppBarSliver(scrollController: _scrollController),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Featured Collections',
                        style: TextStyle(fontSize: 45),
                      ),
                      GestureDetector(
                        child: const Text(
                          'See All',
                          style:
                              TextStyle(fontSize: 20, color: Colors.lightBlue),
                        ),
                      )
                    ],
                  ),
                ),
                StateNotifierBuilder<List<Collection>>(
                  stateNotifier: collectionNotifier,
                  builder: (context, state, child) => state.isNotEmpty
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            itemBuilder: (context, index) {
                              return state[index].map(
                                data: (collection) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Center(
                                      child: Text(collection.title),
                                    ),
                                  ),
                                ),
                                error: (error) => Text(error.error.toString()),
                                loading: (CollectionLoading value) {
                                  return const Text('loading');
                                },
                              );
                            },
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Curated Photos',
                        style: TextStyle(fontSize: 45),
                      ),
                      GestureDetector(
                        child: const Text(
                          'See All',
                          style:
                              TextStyle(fontSize: 20, color: Colors.lightBlue),
                        ),
                      )
                    ],
                  ),
                ),
                StateNotifierBuilder<List<Photo>>(
                  stateNotifier: photoNotifier,
                  builder: (context, state, child) => state.isNotEmpty
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            itemBuilder: (context, index) {
                              return state[index].map(
                                data: (photo) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(photo.src.portrait),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                error: (error) => Text(error.error.toString()),
                                loading: (PhotoLoading value) {
                                  return const Text('loading');
                                },
                              );
                            },
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular Videos',
                        style: TextStyle(fontSize: 45),
                      ),
                      GestureDetector(
                        child: const Text(
                          'See All',
                          style:
                              TextStyle(fontSize: 20, color: Colors.lightBlue),
                        ),
                      )
                    ],
                  ),
                ),
                StateNotifierBuilder<List<Video>>(
                  stateNotifier: videoNotifier,
                  builder: (context, state, child) => state.isNotEmpty
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            itemBuilder: (context, index) {
                              return state[index].map(
                                data: (video) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(video.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                error: (error) => Text(error.error.toString()),
                                loading: (VideoLoading value) {
                                  return const Text('loading');
                                },
                              );
                            },
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
