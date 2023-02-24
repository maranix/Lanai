abstract class PexelsInterface {
  Future<void> getPhotoFromId({
    required int id,
  });

  Future<void> getPhotosFromQuery({
    required String query,
    required int page,
    required int perPage,
  });

  Future<void> getCuratedPhotos({
    required int page,
    required int perPage,
  });
}
