import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lanai/application/widgets/expandable_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ExpandableAppBar(),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 12.0),
          //         child: SizedBox(
          //           height: height * 0.15,
          //           child: ListView.separated(
          //             itemBuilder: (context, index) => Column(
          //               children: const [
          //                 DecoratedBox(
          //                   decoration: BoxDecoration(
          //                       shape: BoxShape.circle, color: Colors.grey),
          //                   child: SizedBox(height: 50, width: 50),
          //                 ),
          //                 Text(
          //                   'Name',
          //                   style: TextStyle(fontSize: 25),
          //                 )
          //               ],
          //             ),
          //             separatorBuilder: (context, index) => Constants.gap20w,
          //             itemCount: 10,
          //             scrollDirection: Axis.horizontal,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          SliverPadding(
            padding: const EdgeInsets.all(12.0),
            sliver: SliverGrid(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: const [
                  QuiltedGridTile(1, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(1, 1),
                ],
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => const Placeholder(
                  color: Colors.deepOrangeAccent,
                ),
                childCount: 4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
