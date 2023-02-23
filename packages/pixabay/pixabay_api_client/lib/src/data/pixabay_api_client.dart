import 'package:pixabay_api_client/src/utils/constants.dart';

abstract class PixabayInterface {
  Future<void> getPhotoFromId({
    required String id,
  });

  Future<void> getPhotosFromQuery({
    required String query,
  });

  Future<void> getPhotosFromCategory({
    required PixabayImageCategory category,
  });

  Future<void> getPhotosFromColors({
    required PixabayImageColors colors,
  });
}
