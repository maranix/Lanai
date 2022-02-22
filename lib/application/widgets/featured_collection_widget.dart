import 'package:flutter/material.dart';
import 'package:lanai/application/theme/style.dart';

class FeaturedCollectionWidget extends StatelessWidget {
  const FeaturedCollectionWidget(
      {Key? key, required this.collection, required this.index})
      : super(key: key);

  final int index;
  final dynamic collection;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        gradient: gradients[index],
      ),
      child: Center(
        child: Text(collection.title),
      ),
    );
  }
}
