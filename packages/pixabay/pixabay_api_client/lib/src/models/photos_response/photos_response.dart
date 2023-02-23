import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixabay_api_client/src/domain/models/models.dart';

part 'photos_response.freezed.dart';
part 'photos_response.g.dart';

@freezed
class PhotosResponse with _$PhotosResponse {
  const factory PhotosResponse({
    required int total,
    required int totalHits,
    required List<Photo> hits,
  }) = _PhotosResponse;

  factory PhotosResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotosResponseFromJson(json);
}
