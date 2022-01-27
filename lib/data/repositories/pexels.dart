import 'package:lanai/domain/models/photo_model.dart';

abstract class PexelsRepository {
  Future<List<PhotoElement>> getCuratedPhotos();
  // TODO: Impletement Collections method
  Future<List<PhotoElement>> getNaturePhotos();
  Future<List<PhotoElement>> getWFHPhotos();
  Future<List<PhotoElement>> getLightPhotos();
  Future<List<PhotoElement>> getTexturePhotos();
  Future<List<PhotoElement>> getRainingPhotos();
  Future<List<PhotoElement>> getAdventurePhotos();
  Future<List<PhotoElement>> getDarkPhotos();
  Future<List<PhotoElement>> getRetroPhotos();
}
