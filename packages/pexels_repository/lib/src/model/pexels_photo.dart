import 'package:freezed_annotation/freezed_annotation.dart';

part 'pexels_photo.freezed.dart';
part 'pexels_photo.g.dart';

@freezed
class PexelsPhotoList with _$PexelsPhotoList {
  const factory PexelsPhotoList({
    required List<PexelsPhoto> photos,
  }) = _PhotoList;

  factory PexelsPhotoList.fromJson(Map<String, Object?> json) =>
      _$PexelsPhotoListFromJson(json);
}

@freezed
class PexelsPhoto with _$PexelsPhoto {
  const factory PexelsPhoto({
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
  }) = _PexelsPhoto;

  factory PexelsPhoto.fromJson(Map<String, Object?> json) =>
      _$PexelsPhotoFromJson(json);
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
