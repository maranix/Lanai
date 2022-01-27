import 'package:flutter/material.dart';
import 'package:lanai/application/constants/contants.dart';
import 'package:lanai/application/widgets/categories_grid.dart';
import 'package:lanai/domain/enums/enums.dart';
import 'package:lanai/domain/services/photo_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<PhotoProvider>(context, listen: false).curatedPhoto();
  }

  @override
  Widget build(BuildContext context) {
    final photosProvider = Provider.of<PhotoProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: photosProvider.state == PhotoListViewState.loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : photosProvider.state == PhotoListViewState.error
                ? const Center(
                    child: Text('Error loading photos'),
                  )
                : photosProvider.photos.isEmpty
                    ? const Center(
                        child: Text('Couldn\'t find any photos to load'),
                      )
                    : SingleChildScrollView(
                        // TODO: Optimize these widgets and implement network calls for each of them
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, bottom: 15.0, top: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Photos',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .apply(
                                            color: Colors.black,
                                            fontWeightDelta: 5),
                                  ),
                                  Text(
                                    'Videos',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .apply(
                                            color: Colors.black,
                                            fontWeightDelta: 5),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.search),
                                    iconSize: 35,
                                    padding: const EdgeInsets.only(right: 15.0),
                                  )
                                ],
                              ),
                              Constants.gap,
                              Text(
                                'Featured Collection',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              Text(
                                'Cool Cats',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                              Constants.gap,
                              Constants.gap,
                              Text(
                                'Curated',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                              Constants.gap,
                              Constants.gap,
                              Text(
                                'Nature',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                              Constants.gap,
                              Constants.gap,
                              Text(
                                'Work From Home',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                              Constants.gap,
                              Constants.gap,
                              Text(
                                'Lights',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                              Constants.gap,
                              Constants.gap,
                              Text(
                                'Texture',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                              Constants.gap,
                              Constants.gap,
                              Text(
                                'Raining',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                              Constants.gap,
                              Constants.gap,
                              Text(
                                'Adventure',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                              Constants.gap,
                              Constants.gap,
                              Text(
                                'Dark',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                              Constants.gap,
                              Constants.gap,
                              Text(
                                'Retro',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .apply(color: Colors.black),
                              ),
                              Constants.gap,
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: CategoriesPhotoGrid(
                                    photosProvider: photosProvider),
                              ),
                            ],
                          ),
                        ),
                      ),
      ),
    );
  }
}
