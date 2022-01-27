import 'package:lanai/domain/models/photo_model.dart';

abstract class PexelsRepository {
  Future<List<PhotoElement>> getCuratedPhotos();
}
