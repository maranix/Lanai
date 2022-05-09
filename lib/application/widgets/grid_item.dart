import 'package:flutter/material.dart';
import 'package:lanai/application/utils/see_all_mixing.dart';

class GridItem extends StatelessWidget with SeeAllMixIn {
  const GridItem({Key? key, required this.data}) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => getPreviewWidget(data),
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            image: NetworkImage(
              getPreviewImageUrl(data),
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
