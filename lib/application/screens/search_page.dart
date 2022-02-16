import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FloatingSearchBar(
          builder: (BuildContext context, Animation<double> transition) =>
              const SizedBox.shrink(),
        ),
      ),
    );
  }
}
