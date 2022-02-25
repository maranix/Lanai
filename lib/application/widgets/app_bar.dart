import 'package:flutter/material.dart';
import 'package:lanai/application/constants/category_constants.dart';
import 'package:lanai/application/constants/constants.dart';
import 'package:lanai/application/screens/discover_page.dart';
import 'package:lanai/application/screens/search_page.dart';

class AppBarSliver extends StatelessWidget {
  const AppBarSliver({Key? key, required this.scrollController})
      : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    var top = MediaQuery.of(context).size.height *
        (MediaQuery.of(context).orientation == Orientation.landscape
            ? 0.75
            : 0.37);

    return SliverAppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      title: const Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Discover',
          style: TextStyle(
            color: Colors.black,
            fontSize: 50,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchPage(),
              ),
            );
          },
          child: const Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
        )
      ],
      backgroundColor: Colors.grey.shade50,
      expandedHeight: top > 240
          ? MediaQuery.of(context).size.height *
              (MediaQuery.of(context).orientation == Orientation.landscape
                  ? 0.75
                  : top > 250
                      ? 0.37
                      : 0.47)
          : MediaQuery.of(context).size.height *
              (MediaQuery.of(context).orientation == Orientation.landscape
                  ? 0.3
                  : 0.22),
      flexibleSpace: LayoutBuilder(builder: (context, constraints) {
        if (scrollController.offset <= 140) {
          top = MediaQuery.of(context).size.height *
              (MediaQuery.of(context).orientation == Orientation.landscape
                  ? 0.75
                  : 0.37);
        } else {
          top = constraints.biggest.height;
        }

        return FlexibleSpaceBar(
          background: top > 240 ? const ExpandedList() : const CollapsedList(),
        );
      }),
      elevation: 0,
    );
  }
}

class CollapsedList extends StatelessWidget {
  const CollapsedList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    categoriesList.values.elementAt(index),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: const SizedBox(
                height: 80,
                width: 80,
              ),
            ),
            Text(
              categoriesList.keys.elementAt(index),
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      separatorBuilder: (context, index) => Constants.gap10w,
      itemCount: categoriesList.keys.length,
      scrollDirection: Axis.horizontal,
    );
  }
}

class ExpandedList extends StatelessWidget {
  const ExpandedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DiscoverPage(
                        query: categoriesList.keys.elementAt(index)),
                  ),
                );
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(
                      categoriesList.values.elementAt(index),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const SizedBox(
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Text(
              categoriesList.keys.elementAt(index),
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) => Constants.gap10w,
      itemCount: categoriesList.keys.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
