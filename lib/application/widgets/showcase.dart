import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

/// # ShowCase
/// This widget returns a [GridView.custom] with a unique layout.
///
/// ## Required parameters.
/// __[data]__ : A List<T> which can be of type [PhotoModel], [VideoModel], [CollectionsModel]
///
///
class ShowCase extends StatelessWidget {
  const ShowCase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
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
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => const SizedBox.shrink(),
        childCount: 0,
      ),
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
