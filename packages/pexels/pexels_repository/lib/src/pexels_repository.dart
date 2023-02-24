import 'package:pexels_api_client/pexels_api_client.dart';
import 'package:pexels_repository/src/utils/exceptions.dart';

class PexelsRepository implements PexelsInterface {
  const PexelsRepository({required PexelsApiClient apiClient})
      : _apiClient = apiClient;

  final PexelsApiClient _apiClient;

  @override
  Future<Photo> getPhotoFromId({required int id}) async {
    try {
      return await _apiClient.getPhotoFromId(id: id);
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(GetPhotoFailure(error: e), stackTrace);
    }
  }

  @override
  Future<PhotosResponse> getPhotosFromQuery({
    required String query,
    PexelsImageOrientation? imageOrientation,
    PexelsImageSize? imageSize,
    PexelsImageColor? imageColor,
    int page = 1,
    int perPage = 80,
  }) async {
    try {
      return await _apiClient.getPhotosFromQuery(
        query: query,
        imageOrientation: imageOrientation,
        imageSize: imageSize,
        imageColor: imageColor,
        page: page,
        perPage: perPage,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(GetPhotoFailure(error: e), stackTrace);
    }
  }

  @override
  Future<PhotosResponse> getCuratedPhotos({
    int page = 1,
    int perPage = 80,
  }) async {
    try {
      return await _apiClient.getCuratedPhotos(
        page: page,
        perPage: perPage,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(GetPhotoFailure(error: e), stackTrace);
    }
  }
}
