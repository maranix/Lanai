import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/application/constants/constants.dart';
import 'package:lanai/application/screens/see_all.dart';
import 'package:lanai/application/widgets/app_bar.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/data/repositories/videos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:lanai/domain/models/video_model.dart';
import 'package:lanai/domain/services/photos_notifier.dart';
import 'package:lanai/domain/services/video_notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoNotifier = PhotoNotifier(PhotosRepository(http.Client()));
    final videoNotifier = VideosNotifier(VideosRepository(http.Client()));
    photoNotifier.curated();
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
                        'Curated Photos',
                        style: TextStyle(fontSize: 45),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeeAll(
                                      data: photoNotifier,
                                      section: 'Curated Photos')));
                        },
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
                      ? Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.45,
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 10,
                              ),
                              itemBuilder: (context, index) {
                                return state[index].map(
                                  data: (photo) => DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      image: DecorationImage(
                                        image: NetworkImage(photo.src.portrait),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  error: (error) =>
                                      Text(error.error.toString()),
                                  loading: (PhotoLoading value) {
                                    return const Text('loading');
                                  },
                                );
                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                            ),
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeeAll(
                                      data: videoNotifier,
                                      section: 'Popular Videos')));
                        },
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
                      ? Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.45,
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 10,
                              ),
                              itemBuilder: (context, index) {
                                return state[index].map(
                                  data: (video) => DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      image: DecorationImage(
                                        image: NetworkImage(video.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  error: (error) =>
                                      Text(error.error.toString()),
                                  loading: (VideoLoading value) {
                                    return const Text('loading');
                                  },
                                );
                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                            ),
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: Constants.gap20h)
        ],
      ),
    );
  }
}
