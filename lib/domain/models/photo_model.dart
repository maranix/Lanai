// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo.data(
      int id,
      int width,
      int height,
      String url,
      String photographer,
      String photographer_url,
      int photographer_id,
      String avg_color,
      Src src,
      String alt) = PhotoData;

  const factory Photo.loading() = PhotoLoading;
  const factory Photo.error(Object? error) = PhotoError;

  factory Photo.fromJson(Map<String, dynamic> json) =>
      _$PhotoData.fromJson(json);
}

@freezed
class Src with _$Src {
  const factory Src(
    String original,
    String large2x,
    String large,
    String medium,
    String small,
    String portrait,
    String landscape,
    String tiny,
  ) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}
