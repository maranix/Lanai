import 'package:lanai/domain/models/collections_model.dart';
import 'package:lanai/domain/models/photo_model.dart';

abstract class PexelsPhotoRepository {
  // !reserved for future release
  // Future<List<PhotoElement>> getCuratedPhotos();
  Future<List<PhotoElement>> getPhotos(String query);
}

// !reserved for future release
abstract class PexelsCollectionsRepository {
  Future<List<Collection>> getCollections();
  Future<List<Collection>> getCollectionDetails(String id);
}
