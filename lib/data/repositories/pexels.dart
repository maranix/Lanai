import 'package:lanai/domain/models/collections_model.dart';
import 'package:lanai/domain/models/photo_model.dart';

abstract class PexelsPhotoRepository {
  Future<List<PhotoElement>> getCuratedPhotos();
  Future<List<PhotoElement>> getNaturePhotos();
  Future<List<PhotoElement>> getWFHPhotos();
  Future<List<PhotoElement>> getLightPhotos();
  Future<List<PhotoElement>> getTexturePhotos();
  Future<List<PhotoElement>> getRainingPhotos();
  Future<List<PhotoElement>> getAdventurePhotos();
  Future<List<PhotoElement>> getDarkPhotos();
  Future<List<PhotoElement>> getRetroPhotos();
}

abstract class PexelsCollectionsRepository {
  Future<List<Collection>> getCollections();
}
