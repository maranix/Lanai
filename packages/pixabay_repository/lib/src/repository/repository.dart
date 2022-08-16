import 'package:pixabay_repository/src/model/pixabay_photo.dart';

abstract class Repository {
  const Repository();

  Future<PixabayPhotoList> getPhotosByQuery({
    required List<String> query,
  }) {
    throw UnimplementedError();
  }
}
