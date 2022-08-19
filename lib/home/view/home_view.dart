import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lanai/photo/photo.dart';

/// {@template home_view}
/// Define your HomePage body/ui structure here.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              child: UpperSection(),
            ),
            Expanded(
              child: CategoriesCarousel(),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class UpperSection extends StatelessWidget {
  const UpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Pexels',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            PopupMenuButton(
              elevation: 0,
              itemBuilder: (context) => [
                const PopupMenuItem<String>(
                  child: Text('Settings'),
                ),
                const PopupMenuItem<String>(
                  child: Text('Favourites'),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Curated',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                PhotoPage.route(title: "Curated"),
              ),
              child: const Text('See All'),
            ),
          ],
        ),
        SizedBox.square(
          dimension: MediaQuery.of(context).size.height * 0.2,
          child: const Placeholder(),
        ),
        const SizedBox(height: 20),
        const Placeholder(
          color: Colors.blueGrey,
          child: SizedBox.square(
            dimension: 30,
            child: Text('Search Bar'),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Categories',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class CategoriesCarousel extends StatefulWidget {
  const CategoriesCarousel({super.key});

  @override
  State<CategoriesCarousel> createState() => _CategoriesCarouselState();
}

class _CategoriesCarouselState extends State<CategoriesCarousel> {
  late PageController _pageController;
  int currentPage = 1;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.65,
    );

    /* Sort of a hack/workaround but it fixes the issue of 
     pageController.position.haveDimensions not having any dimensions on initialization. */
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      onPageChanged: (int page) {
        setState(() {
          currentPage = _pageController.page!.toInt();
        });
      },
      itemBuilder: (context, index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          return Transform.scale(
            /*
              Check if the scroll position is attached and have dimensions.
                a. if it isn't then don't scale down the item.
                b. if it does then scale down the item to max(0.8, (1 - currentPage - ItemIndex) * 0.5)
                c. if the current page and index are the same then scale value will be 1 otherwise it will be scaled down.
            */
            scale: _pageController.position.haveDimensions
                ? math.max(
                    0.8,
                    1 - (_pageController.page! - index).abs() * 0.5,
                  )
                : 1.0,
            child: ColoredBox(
              color: index % 2 == 0 ? Colors.green : Colors.red,
              child: child,
            ),
          );
        },
      ),
    );
  }
}
