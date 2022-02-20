import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:lanai/application/widgets/app_bar.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:lanai/domain/services/photos_notifier.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBarSliver(
      child: Scaffold(
        body: StateNotifierBuilder<List<Photo>>(
          stateNotifier: PhotoNotifier(PhotosRepository(http.Client()))
            ..curated(),
          builder: (BuildContext context, List<Photo> state, Widget? child) =>
              CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(12.0),
                sliver: SliverGrid(
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: const [
                      QuiltedGridTile(1, 2),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(2, 1),
                      QuiltedGridTile(1, 1),
                    ],
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => state[index].map(
                      data: (photo) => DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(photo.src.portrait),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      loading: (state) => const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      error: (error) => Center(
                        child: Text(
                          error.error.toString(),
                          style: const TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    childCount: state.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
