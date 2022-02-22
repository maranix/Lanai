import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:lanai/domain/services/photos_notifier.dart';

/// # ShowCase
/// This widget returns a [GridView.custom] with a unique layout.
///
/// ## Required parameters.
/// __[data]__ : A List<T> which can be of type [PhotoModel], [VideoModel]
///
///
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key, required this.query}) : super(key: key);

  final String query;

  @override
  Widget build(BuildContext context) {
    final photoNotifier = PhotoNotifier(PhotosRepository(http.Client()))
      ..search(query);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              query,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.grey.shade50,
            elevation: 0,
          ),
          StateNotifierBuilder<List<Photo>>(
            stateNotifier: photoNotifier,
            builder: (BuildContext context, state, Widget? child) {
              return state.isNotEmpty
                  ? SliverPadding(
                      padding: const EdgeInsets.all(12.0),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => state[index].mapOrNull(
                              data: (result) => DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          result.src.portrait,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                              error: (error) => Text(error.error.toString())),
                          childCount: state.length,
                        ),
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: const [
                            QuiltedGridTile(1, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 1),
                            QuiltedGridTile(1, 1),
                          ],
                        ),
                      ),
                    )
                  : const SliverFillViewport(
                      delegate: SliverChildListDelegate.fixed(
                        [
                          Center(
                            child: CircularProgressIndicator.adaptive(),
                          )
                        ],
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
