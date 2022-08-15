import 'package:pexels_repository/src/model/photo.dart';

abstract class Repository {
  const Repository();

  Future<PhotoList> getCuratedPhotos() {
    throw UnimplementedError();
  }

  Future<PhotoList> getPhotosByQuery({required String query, int? page = 1}) {
    throw UnimplementedError();
  }

  Future<Photo> getPhotoById({required String id}) {
    throw UnimplementedError();
  }
}
