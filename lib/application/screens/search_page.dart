import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/application/constants/constants.dart';
import 'package:lanai/application/widgets/grid_item.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:lanai/domain/services/photos_notifier.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final photoNotifier = PhotoNotifier(PhotosRepository(http.Client()));

    return Scaffold(
      backgroundColor: const Color(0xFFFFFEF4),
      body: SafeArea(
        child: FloatingSearchBar(
          builder: (BuildContext context, Animation<double> transition) =>
              const SizedBox.shrink(),
          onSubmitted: (query) {
            photoNotifier.search(query);
          },
          body: StateNotifierBuilder<List<Photo>>(
            stateNotifier: photoNotifier,
            builder: (BuildContext context, state, Widget? child) {
              return state.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Constants.gap40h,
                          Constants.gap10h,
                          Expanded(
                            child: GridView.builder(
                              gridDelegate: SliverQuiltedGridDelegate(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                repeatPattern:
                                    QuiltedGridRepeatPattern.inverted,
                                pattern: const [
                                  QuiltedGridTile(1, 2),
                                  QuiltedGridTile(1, 1),
                                  QuiltedGridTile(2, 1),
                                  QuiltedGridTile(1, 1),
                                ],
                              ),
                              itemBuilder: (context, index) {
                                return GridItem(
                                  data: state[index]
                                      .mapOrNull(data: (result) => result),
                                );
                              },
                              itemCount: state.length,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Positioned.fill(
                      child: Center(
                        child: Text(
                          'Try searching for something',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
