import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lanai/photo/view/photo_preview.dart';
import 'package:shimmer/shimmer.dart';

/// {@template search_view}
/// Define your SearchPage body/ui structure here.
/// {@endtemplate}
class SearchView extends StatelessWidget {
  /// {@macro search_view}
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    borderRadius: BorderRadius.circular(15),
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      size: 35,
                    ),
                  ),
                  const SizedBox.square(dimension: 20),
                  const Text(
                    'Results for',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: ResultsListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultsListView extends StatelessWidget {
  const ResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          const QuiltedGridTile(1, 2),
          const QuiltedGridTile(1, 1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => GestureDetector(
          onTap: () => Navigator.push(
            context,
            PhotoPreview.route(),
          ),
          child: ResultsListViewItem(
            key: ValueKey(index),
          ),
        ),
        childCount: 1000,
      ),
    );
  }
}

class ResultsListViewItem extends StatefulWidget {
  const ResultsListViewItem({
    super.key,
  });

  @override
  State<ResultsListViewItem> createState() => _ResultsListViewItemState();
}

class _ResultsListViewItemState extends State<ResultsListViewItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _scaleAnimation =
        Tween<double>(begin: 0.5, end: 1.0).animate(_animationController);

    Future.delayed(
      const Duration(milliseconds: 50),
      _animationController.forward,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        child: const ColoredBox(color: Colors.white),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
