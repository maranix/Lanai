import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class PhotoList with _$PhotoList {
  const factory PhotoList({
    required List<Photo> photos,
  }) = _PhotoList;

  factory PhotoList.fromJson(Map<String, Object?> json) =>
      _$PhotoListFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    required int id,
    required int width,
    required int height,
    required String url,
    required String photographer,
    required String photographer_url,
    required int photographer_id,
    required String avg_color,
    required Src src,
    required String alt,
  }) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
}

@freezed
class Src with _$Src {
  const factory Src({
    required String original,
    required String large2x,
    required String large,
    required String medium,
    required String small,
    required String portrait,
    required String landscape,
    required String tiny,
  }) = _Src;

  factory Src.fromJson(Map<String, Object?> json) => _$SrcFromJson(json);
}
