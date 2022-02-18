import 'package:flutter/material.dart';
import 'package:lanai/application/constants/constants.dart';

class ExpandableAppBar extends StatelessWidget {
  const ExpandableAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
      expandedHeight: MediaQuery.of(context).size.height * 0.2,
      elevation: 0,
    );
  }
}
