import 'package:flutter/material.dart';

class AppBarSliver extends StatefulWidget {
  const AppBarSliver({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  State<AppBarSliver> createState() => _AppBarSliverState();
}

class _AppBarSliverState extends State<AppBarSliver> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
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
                expandedHeight: 500,
                backgroundColor: Colors.grey.shade50,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    // TODO: Make it react to the height and let it automatically adjust children on scroll.
                    // Fully collapsed appbar should only show a single row with rounded children for quick and easier navigation.
                    background: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) => DecoratedBox(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.grey),
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                elevation: 0,
              )
            ],
        body: widget.child);
  }
}
