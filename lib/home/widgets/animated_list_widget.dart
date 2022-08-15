import 'package:flutter/material.dart';
import 'package:pexels_repository/pexels_repository.dart';

class PhotosGrid extends StatelessWidget {
  const PhotosGrid({super.key, required this.photoList});

  final PhotoList photoList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      cacheExtent: 0,
      itemCount: photoList.photos.length,
      itemBuilder: (BuildContext context, int index) => AnimatedScrollViewItem(
        child: ListItem(uri: photoList.photos[index].src.medium),
      ),
    );
  }
}

class AnimatedScrollViewItem extends StatefulWidget {
  const AnimatedScrollViewItem({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<AnimatedScrollViewItem> createState() => _AnimatedScrollViewItemState();
}

class _AnimatedScrollViewItemState extends State<AnimatedScrollViewItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.uri,
  });

  final String uri;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(uri),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
