import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lanai/photo/photo.dart';
import 'package:pexels_repository/pexels_repository.dart';

import './photo_preview.dart';

/// {@template photo_view}
/// Define your PhotoPage body/ui structure here.
/// {@endtemplate}
class PhotoView extends StatelessWidget {
  /// {@macro photo_view}
  const PhotoView({super.key, required this.title});

  final String title;

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
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: PhotoListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhotoListView extends StatelessWidget {
  const PhotoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(
      builder: (context, state) {
        if (state.status == PhotoStatus.fetched) {
          return GridView.custom(
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 4,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: [
                const QuiltedGridTile(2, 2),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 2),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  PhotoPreview.route(image: state.data.photos[index]),
                ),
                child: PhotoListViewItem(
                  key: ValueKey(index),
                  photo: state.data.photos[index],
                ),
              ),
              childCount: state.data.photos.length,
            ),
          );
        }

        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}

class PhotoListViewItem extends StatefulWidget {
  const PhotoListViewItem({
    super.key,
    required this.photo,
  });

  final PexelsPhoto photo;

  @override
  State<PhotoListViewItem> createState() => _PhotoListViewItemState();
}

class _PhotoListViewItemState extends State<PhotoListViewItem> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(_animationController);

    Future.delayed(
      const Duration(milliseconds: 50),
      _animationController.forward,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: NetworkImage(widget.photo.src.large),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
