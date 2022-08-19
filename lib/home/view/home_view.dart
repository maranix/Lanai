import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lanai/photo/photo.dart';
import 'package:lanai/settings/settings.dart';

/// {@template home_view}
/// Define your HomePage body/ui structure here.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
    final searchController = TextEditingController();

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
              onSelected: (String selection) {
                switch (selection) {
                  case 'Settings':
                    Navigator.push(
                      context,
                      SettingsPage.route(),
                    );
                }
              },
              elevation: 0,
              itemBuilder: (context) => [
                const PopupMenuItem<String>(
                  value: 'Settings',
                  child: Text('Settings'),
                ),
                const PopupMenuItem<String>(
                  value: 'Favourites',
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
                PhotoPage.route(
                  title: "Curated",
                  event: const CuratedPhotoFetched(),
                ),
              ),
              child: const Text('See All'),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            PhotoPage.route(
              title: "Curated",
              event: const CuratedPhotoFetched(),
            ),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/curated.jpg',
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox.square(
          dimension: MediaQuery.of(context).size.height * 0.06,
          child: TextFormField(
            controller: searchController,
            onFieldSubmitted: (String query) {
              searchController.clear();

              Navigator.push(
                context,
                PhotoPage.route(
                  title: query,
                  event: PexelsPhotoSearched(query: query),
                ),
              );
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8.0),
              prefixIcon: const Icon(Icons.search_rounded),
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
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
  final Map<String, String> categories = {
    "Adventure": "assets/images/adventure.jpg",
    "Animals": "assets/images/animals.jpg",
    "Dark": "assets/images/dark.jpg",
    "History": "assets/images/history.jpg",
    "Light": "assets/images/light.jpg",
    "Nature": "assets/images/nature.jpg",
    "Rain": "assets/images/raining.jpg",
    "Retro": "assets/images/retro.jpg",
    "Texture": "assets/images/texture.jpg",
  };

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
              onTap: () => Navigator.push(
                context,
                PhotoPage.route(
                  title: categories.keys.toList()[index],
                  event: PexelsPhotoSearched(query: categories.keys.toList()[index]),
                ),
              ),
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
