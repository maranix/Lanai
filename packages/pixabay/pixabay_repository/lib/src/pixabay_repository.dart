import 'package:pixabay_api_client/pixabay_api_client.dart';
import 'package:pixabay_repository/src/utils/exceptions.dart';

class PixabayRepository implements PixabayInterface {
  const PixabayRepository({required PixabayApiClient apiClient})
      : _apiClient = apiClient;

  final PixabayApiClient _apiClient;

  @override
  Future<Photo> getPhotoFromId({required String id}) async {
    try {
      return await _apiClient.getPhotoFromId(id: id);
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(GetFailure(error: e), stackTrace);
    }
  }

  @override
  Future<PhotosResponse> getPhotosFromCategory({
    required PixabayImageCategory category,
    PixabayImageType imageType = PixabayImageType.all,
    PixabayImageOrientation imageOrientation = PixabayImageOrientation.all,
    PixabayImageOrder order = PixabayImageOrder.popular,
    bool editorsChoice = false,
    int page = 1,
  }) async {
    try {
      return await _apiClient.getPhotosFromCategory(
        category: category,
        imageType: imageType,
        imageOrientation: imageOrientation,
        order: order,
        editorsChoice: editorsChoice,
        page: page,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(GetFailure(error: e), stackTrace);
    }
  }

  @override
  Future<PhotosResponse> getPhotosFromColors({
    required PixabayImageColors colors,
    PixabayImageType imageType = PixabayImageType.all,
    PixabayImageOrientation imageOrientation = PixabayImageOrientation.all,
    PixabayImageOrder order = PixabayImageOrder.popular,
    bool editorsChoice = false,
    int page = 1,
  }) async {
    try {
      return await _apiClient.getPhotosFromColors(
        colors: colors,
        imageType: imageType,
        imageOrientation: imageOrientation,
        order: order,
        editorsChoice: editorsChoice,
        page: page,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(GetFailure(error: e), stackTrace);
    }
  }

  @override
  Future<PhotosResponse> getPhotosFromQuery({
    required String query,
    PixabayImageType imageType = PixabayImageType.all,
    PixabayImageOrientation imageOrientation = PixabayImageOrientation.all,
    PixabayImageOrder order = PixabayImageOrder.popular,
    bool editorsChoice = false,
    int page = 1,
  }) async {
    try {
      return await _apiClient.getPhotosFromQuery(
        query: query,
        imageType: imageType,
        imageOrientation: imageOrientation,
        order: order,
        editorsChoice: editorsChoice,
        page: page,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(GetFailure(error: e), stackTrace);
    }
  }
}
