// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required List<PhotoElement> photos,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
class PhotoElement with _$PhotoElement {
  const factory PhotoElement({
    required int id,
    required int width,
    required int height,
    required String url,
    required String photographer,
    @JsonKey(name: 'photographer_url') required String photographerUrl,
    @JsonKey(name: 'photographer_id') required int photographerId,
    @JsonKey(name: 'avg_color') required String avgColor,
    required Src src,
    required bool liked,
    required String alt,
  }) = _PhotoElement;

  factory PhotoElement.fromJson(Map<String, dynamic> json) =>
      _$PhotoElementFromJson(json);
}

@freezed
class Src with _$Src {
  const factory Src({
    required String original,
    String? large2X,
    required String large,
    required String medium,
    required String small,
    required String portrait,
    required String landscape,
    required String tiny,
  }) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}
