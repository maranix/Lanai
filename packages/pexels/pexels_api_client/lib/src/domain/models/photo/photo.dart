import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexels_api_client/src/domain/models/models.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo extends Media with _$Photo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Photo({
    required int id,
    required int width,
    required int height,
    required String url,
    required String photographer,
    required String photographerUrl,
    required int photographerId,
    required String avgColor,
    required Src src,
    required bool liked,
    required String alt,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
