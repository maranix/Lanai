import 'package:flutter/material.dart';
import 'package:lanai/home/home.dart';
import 'package:lanai/home/widgets/skeleton_grid_widget.dart';

/// {@template home_view}
/// Define your HomePage body/ui structure here.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curated Photos"),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.status == HomeStatus.loaded) {
            return PhotosGrid(photoList: state.curated);
          }

          if (state.status == HomeStatus.failed) {
            return const Center(
              child: Text("Failed to load images."),
            );
          }

          return const Center(
            child: ShimmerLoadingGrid(),
          );
        },
      ),
    );
  }
}
