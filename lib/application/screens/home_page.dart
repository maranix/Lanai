import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:lanai/domain/services/photos_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StateNotifierBuilder<Photo>(
          stateNotifier: PhotoNotifier(PhotosRepository(http.Client()))
            ..getPhotoById(),
          builder: (BuildContext context, Photo photo, Widget? child) {
            return photo.map(
              data: (state) => Image.network(
                state.src.large2x,
                fit: BoxFit.contain,
              ),
              loading: (state) => const Text('Loading'),
              error: (state) => Text(state.error.toString()),
            );
          },
        ),
      ),
    );
  }
}
