import 'package:flutter/material.dart';
import 'package:lanai/domain/models/collections_model.dart';

class CollectionsGrid extends StatelessWidget {
  const CollectionsGrid({
    Key? key,
    required this.collection,
  }) : super(key: key);

  final List<Collection> collection;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: collection.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          child: Text(collection[index].title),
        );
      },
    );
  }
}
