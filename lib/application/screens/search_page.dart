import 'package:flutter/material.dart';
import 'package:lanai/application/widgets/category_showcase.dart';
import 'package:lanai/domain/services/photo_provider.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEF4),
      body: SafeArea(
        child: FloatingSearchBar(
          builder: (BuildContext context, Animation<double> transition) =>
              Container(),
          onSubmitted: (query) {
            Provider.of<PhotoProvider>(context, listen: false)
                .getPhotosByQuery(query);
          },
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 70.0),
              child: CategoryShowCase(
                photos: Provider.of<PhotoProvider>(context).queryPhotos,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
