import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:lanai/application/utils/see_all_mixing.dart';

class SeeAll extends StatelessWidget with SeeAllMixIn {
  const SeeAll({Key? key, required this.data, this.section}) : super(key: key);

  final dynamic data;
  final String? section;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                section!,
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
            centerTitle: true,
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
          StateNotifierBuilder<List>(
            stateNotifier: data,
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
                                            getPreviewImageUrl(result)),
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
