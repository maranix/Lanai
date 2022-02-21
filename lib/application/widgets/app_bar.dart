import 'package:flutter/material.dart';
import 'package:lanai/application/constants/category_constants.dart';
import 'package:lanai/application/constants/constants.dart';

class AppBarSliver extends StatefulWidget {
  const AppBarSliver({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  State<AppBarSliver> createState() => _AppBarSliverState();
}

class _AppBarSliverState extends State<AppBarSliver> {
  final _scrollController = ScrollController(initialScrollOffset: 0.0);

  @override
  Widget build(BuildContext context) {
    var top = MediaQuery.of(context).size.height * 0.37;

    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        SliverAppBar(
          title: const Text(
            'Discover',
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
            ),
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            )
          ],
          backgroundColor: Colors.grey.shade50,
          expandedHeight: top > 240
              ? MediaQuery.of(context).size.height * 0.37
              : MediaQuery.of(context).size.height * 0.22,
          flexibleSpace: LayoutBuilder(builder: (context, constraints) {
            if (_scrollController.offset <= 140) {
              top = MediaQuery.of(context).size.height * 0.37;
            } else {
              top = constraints.biggest.height;
            }

            return FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              background:
                  top > 240 ? const ExpandedList() : const CollapsedList(),
            );
          }),
          elevation: 0,
        )
      ],
      body: widget.child,
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
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(
                      categoriesList.values.elementAt(index),
                    ),
                    fit: BoxFit.cover,
                  )),
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
            DecoratedBox(
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
