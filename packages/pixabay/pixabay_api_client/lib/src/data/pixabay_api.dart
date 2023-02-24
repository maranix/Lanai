import 'package:pixabay_api_client/src/utils/constants.dart';

abstract class PixabayInterface {
  Future<void> getPhotoFromId({
    required String id,
  });

  Future<void> getPhotosFromQuery({
    required String query,
    required int page,
    required int perPage,
  });

  Future<void> getPhotosFromCategory({
    required PixabayImageCategory category,
    required int page,
    required int perPage,
  });

  Future<void> getPhotosFromColors({
    required PixabayImageColors colors,
    required int page,
    required int perPage,
  });
}
