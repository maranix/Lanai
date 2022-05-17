import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:lanai/application/utils/see_all_mixing.dart';
import 'package:lanai/application/widgets/grid_item.dart';
import 'package:lanai/domain/models/photo_model.dart';

class SeeAll extends StatefulWidget with SeeAllMixIn {
  const SeeAll({Key? key, required this.data, this.section}) : super(key: key);

  final dynamic data;
  final String? section;

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  final _scrollController = ScrollController();
  bool isBottom = false;
  bool loadMore = false;
  int page = 1;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        bool isTop = _scrollController.position.pixels == 0;
        if (!isTop) {
          setState(() {
            isBottom = true;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                widget.section!,
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          StateNotifierBuilder<List>(
            stateNotifier: widget.data,
            builder: (BuildContext context, state, Widget? child) {
              if (loadMore) {
                page += 1;

                if (state.runtimeType == List<Photo>) {
                  widget.data.curated(page: page);
                } else {
                  widget.data.popular(page: page);
                }

                loadMore = false;
                isBottom = false;
              }

              return state.isNotEmpty
                  ? SliverPadding(
                      padding: const EdgeInsets.all(12.0),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => state[index].mapOrNull(
                              data: (result) => GridItem(data: result),
                              error: (error) => Text(error.error.toString())),
                          childCount: state.length,
                        ),
                        gridDelegate: MediaQuery.of(context).size.width < 600
                            ? SliverQuiltedGridDelegate(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                repeatPattern:
                                    QuiltedGridRepeatPattern.inverted,
                                pattern: const [
                                  QuiltedGridTile(1, 2),
                                  QuiltedGridTile(1, 1),
                                  QuiltedGridTile(2, 1),
                                  QuiltedGridTile(1, 1),
                                ],
                              )
                            : MediaQuery.of(context).size.width < 1200
                                ? const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  )
                                : const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 8,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                      ),
                    )
                  : const SliverFillViewport(
                      delegate: SliverChildListDelegate.fixed(
                        [
                          Center(
                            child: CircularProgressIndicator.adaptive(),
                          )
                        ],
                      ),
                    );
            },
          ),
        ],
      ),
      floatingActionButton: isBottom
          ? Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 50,
                width: 100,
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      loadMore = true;
                      isBottom = false;
                    });
                  },
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Text(
                    'Load More',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
