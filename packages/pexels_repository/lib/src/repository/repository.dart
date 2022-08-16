import 'package:pexels_repository/src/model/pexels_photo.dart';

abstract class Repository {
  const Repository();

  Future<PexelsPhotoList> getCuratedPhotos() {
    throw UnimplementedError();
  }

  Future<PexelsPhotoList> getPhotosByQuery(
      {required String query, int? page = 1}) {
    throw UnimplementedError();
  }

  Future<PexelsPhoto> getPhotoById({required String id}) {
    throw UnimplementedError();
  }
}
