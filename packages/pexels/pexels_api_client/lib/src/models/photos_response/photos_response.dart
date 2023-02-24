import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexels_api_client/src/domain/models/models.dart';

part 'photos_response.freezed.dart';
part 'photos_response.g.dart';

@freezed
class PhotosResponse with _$PhotosResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PhotosResponse({
    required int page,
    required int perPage,
    required int totalResults,
    required List<Photo> photos,
    String? nextPage,
    String? prevPage,
  }) = _PhotosResponse;

  factory PhotosResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotosResponseFromJson(json);
}
