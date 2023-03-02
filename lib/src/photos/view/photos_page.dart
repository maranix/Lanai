import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanai/src/photos/photos.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PhotosBloc(),
      child: const PhotosView(),
    );
  }
}
