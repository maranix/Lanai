import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lanai/home/bloc/bloc.dart';
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
        BlocBuilder<HomeBloc, HomeState>(
          /*
        TODO: This one does not work properly as of now.
              Reason:
                Since we are adding event when the HomePage is building
                by the time we finish rendering the ui. We have already
                fetched the curated photos from the api. Hence the state
                is immediately changed and Animation does not work.

              Possible Fix:
                Move this widget to its own stateful widget then call
                the api in didChangeDependecies since it runs only once
                during the widget lifecycle we can ensure that the api
                will only be called only once and the rest of the widget
                tree won't be affected by it.

              Suggestion:
                Add a delay between rendering the static image and calling
                the api to make the transition even smoother and natural.
        */
          builder: (context, state) => AnimatedSwitcher(
            duration: const Duration(seconds: 10),
            child: state.status == HomeStatus.fetched
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            state.curated.photos.first.src.large2x,
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox(
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
        ),
        const SizedBox(height: 20),
        SizedBox.square(
          dimension: MediaQuery.of(context).size.height * 0.06,
          child: TextFormField(
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
          );
        },
      ),
    );
  }
}
