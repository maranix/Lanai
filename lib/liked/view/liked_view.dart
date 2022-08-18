import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// {@template liked_view}
/// Define your LikedPage body/ui structure here.
/// {@endtemplate}
class LikedView extends StatelessWidget {
  /// {@macro liked_view}
  const LikedView({super.key});

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
                    'Favourites',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: LikedImagesList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LikedImagesList extends StatelessWidget {
  const LikedImagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => LikedImagesListItem(
        key: ValueKey(index),
      ),
      itemCount: 1000,
    );
  }
}

class LikedImagesListItem extends StatefulWidget {
  const LikedImagesListItem({
    super.key,
  });

  @override
  State<LikedImagesListItem> createState() => _LikedImagesListItemState();
}

class _LikedImagesListItemState extends State<LikedImagesListItem>
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
        child: const ColoredBox(
          color: Colors.white,
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
