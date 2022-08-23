import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lanai/home/constants.dart';

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
      itemCount: categories.length,
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
            child: GestureDetector(
              child: Stack(
                children: [
                  SizedBox.expand(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            categories.values.toList()[index],
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            categories.keys.toList()[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
